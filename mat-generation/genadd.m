confirm_recursive_rmdir(0);
rmdir('cachestudy/add', 's');
mkdir('cachestudy');
mkdir('cachestudy', 'add');

ns = [2**10];
updir = 'cachestudy/add';
for n=ns
  curdir = strcat(['n' num2str(n)]);
	fullcurdir = strcat([updir '/' curdir]);
	rmdir(fullcurdir, 's');
	mkdir(updir, curdir);
	up2dir = fullcurdir;
	for d = 0.125
		curdir = strcat(['d' num2str(floor(1000*d))]);
		fullcurdir = strcat([up2dir '/' curdir]);
		rmdir(fullcurdir, 's');
		mkdir(up2dir, curdir);
		up3dir = fullcurdir;
		for count = 1:10
			printf("n=%d d=%d c=%d\n", floor(n), floor(d*100), floor(count));
			fflush(stdout);
			A = sprand(n,n,d);
			printf("Generated random matrix A\n");
			fflush(stdout);
			if(abs(A(n,n)) < 1)
				A(n,n) = A(n,n) + 3;
			end
			A = A' * A;
			B = sprand(n,n,d);
			printf("Generated random matrix B\n");
			fflush(stdout);
			if(abs(B(n,n)) < 1)
				B(n,n) = B(n,n) + 3;
			end
			B = B' * B;
			[i, j, v] = find(A);
			At = [floor(i), floor(j), v];
			[i, j, v] = find(B);	
			Bt = [floor(i), floor(j), v];
			printf("Obtained triplets\n");
			fflush(stdout);
			save("-ascii", strcat([fullcurdir '/' num2str(count) '.A.mat']), 'At');
			save("-ascii", strcat([fullcurdir '/' num2str(count) '.B.mat']), 'Bt');
			printf("Wrote file\n");
			fflush(stdout);
		end
	end
end

