
rmdir('cachestudy/algo', 's')
mkdir('cachestudy')
mkdir('cachestudy', 'algo')

sz = stacksize()

d1size = 2**15 / 64; //number of doubles
d1size = 2**12 / 64; //hack

gbstack = (2**30)/(32);
stacksize(gbstack*4);

ns = [d1size*4 d1size*8];
updir = 'cachestudy/algo';
for n=ns
  curdir = strcat(['n' string(n)]);
	fullcurdir = strcat([updir '/' curdir]);
	rmdir(fullcurdir, 's');
	mkdir(updir, curdir);
	up2dir = fullcurdir;
	for d = 0.2:0.1:0.4
		curdir = strcat(['d' string(int(100*d))]);
		fullcurdir = strcat([up2dir '/' curdir]);
		rmdir(fullcurdir, 's');
		mkdir(up2dir, curdir);
		up3dir = fullcurdir;
		for count = 1:40
			step = sqrt(n);
			printf("n=%d d=%d c=%d sd=%f\n", int(n), int(d*100), int(count), d*step);
			A = spzeros(n,n);
			for nb = 1:step
				//D = sprand(step,step,d*step);
				D = ones(step,step);
				D = sparse(D);
				A((nb-1)*step+1:nb*step,(nb-1)*step+1:nb*step) = D;
			end
			//A = sprand(n,n,d);
			A = A' * A;
			//D = sqrt(diag(sum(abs(A),1)));
			//A = inv(D) * A * inv(D);
			B = sprand(n,1,d);
			Bmin = min(B(B ~= 0));
			if abs(B(n,1)) < Bmin
				B(n,1) = Bmin;
			end
			printf('Solving...')
			[X, flag, err, iter, res] = gmres(A,B,n,1e-6,n*100);
			if flag == 0
				X = sparse(X);
				printf("nnz(A):%d nnz(B):%d nnz(X):%d", nnz(A), nnz(B), nnz(X));
				Bt = sp2triplet(B);	
				At = sp2triplet(A);
				Xt = sp2triplet(X);
				fprintfMat(strcat([fullcurdir '/' string(count) '.A.mat']), At);
				fprintfMat(strcat([fullcurdir '/' string(count) '.B.mat']), Bt);
				fprintfMat(strcat([fullcurdir '/' string(count) '.X.mat']), Xt);
			else 
				printf('Could not solve, error: %lf', err)
			end
		end
	end
end

stacksize(sz(1));
