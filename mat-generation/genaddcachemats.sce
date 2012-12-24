exec sp2triplet.sci

rmdir('cachestudy/add', 's')
mkdir('cachestudy')
mkdir('cachestudy', 'add')

sz = stacksize()
stacksize(50000000)

ns = [2**14]
updir = 'cachestudy/add';
for n=ns
  curdir = strcat(['n' string(n)]);
	fullcurdir = strcat([updir '/' curdir]);
	rmdir(fullcurdir, 's');
	mkdir(updir, curdir);
	up2dir = fullcurdir;
	for d = 0.05:0.05:0.2
		curdir = strcat(['d' string(int(100*d))]);
		fullcurdir = strcat([up2dir '/' curdir]);
		rmdir(fullcurdir, 's');
		mkdir(up2dir, curdir);
		up3dir = fullcurdir;
		for count = 1:40
			printf("n=%d d=%d c=%d\n", int(n), int(d*100), int(count));
			A = sprand(n,n,d);
			if(abs(A(n,n)) < 1)
				A(n,n) = A(n,n) + 3;
			end
			A = A' * A;
			At = sp2triplet(A);
			B = sprand(n,n,d);
			if(abs(B(n,n)) < 1)
				B(n,n) = B(n,n) + 3;
			end
			B = B' * B;
			Bt = sp2triplet(B);	
			fprintfMat(strcat([fullcurdir '/' string(count) '.A.mat']), At);
			fprintfMat(strcat([fullcurdir '/' string(count) '.B.mat']), Bt);
		end
	end
end

stacksize(sz(1))
