confirm_recursive_rmdir(0);
rmdir('cachestudy/algo', 's')
mkdir('cachestudy')
mkdir('cachestudy', 'algo')

updir = 'cachestudy/algo';
for n=2**11
  curdir = strcat(['n' num2str(n)]);
	fullcurdir = strcat([updir '/' curdir]);
	rmdir(fullcurdir, 's');
	mkdir(updir, curdir);
	up2dir = fullcurdir;
	for d = 1/(2**7)
		curdir = 'd0_0078125';
		fullcurdir = strcat([up2dir '/' curdir]);
		rmdir(fullcurdir, 's');
		mkdir(up2dir, curdir);
		up3dir = fullcurdir;
		for count = 1:10
			step = sqrt(n);
			printf("n=%d d=%f c=%d sd=%f\n", floor(n), d, floor(count), d*step);
			fflush(stdout);
			%A = spzeros(n,n);
			%for nb = 1:step
		  %	D = ones(step,step);
			%	D = sparse(D);
			%	A((nb-1)*step+1:nb*step,(nb-1)*step+1:nb*step) = D;
			%end
			A = sprand(n,n,d);
			A = A' * A;
			D = sqrt(diag(sum(abs(A),1)));
			A = inv(D) * A * inv(D);
			B = sprand(n,1,d);
			Bmin = min(B(B ~= 0));
			if abs(B(n,1)) < Bmin
				B(n,1) = Bmin;
			end
			printf('Solving...')
			fflush(stdout);
			[X, flag, err, iter, res] = cgs(A,B,1e-6,n*10);
			if flag == 0
				X = sparse(X);
				printf("nnz(A):%d nnz(B):%d nnz(X):%d\n", nnz(A), nnz(B), nnz(X));
				fflush(stdout);
				[i,j,v] = find(B);	
				Bt = [floor(i)-1 floor(j)-1 v];
				[i,j,v] = find(A);
				At = [floor(i)-1 floor(j)-1 v];
				[i,j,v] = find(X);
				Xt = [floor(i)-1 floor(j)-1 v];
				printf("Saving\n")
				fflush(stdout);
				save('-ascii', strcat([fullcurdir '/' num2str(count) '.A.mat']), 'At');
				save('-ascii', strcat([fullcurdir '/' num2str(count) '.B.mat']), 'Bt');
				save('-ascii', strcat([fullcurdir '/' num2str(count) '.X.mat']), 'Xt');
			else 
				printf('Could not solve, error: %lf', err)
				fflush(stdout);
			end
		end
	end
end
