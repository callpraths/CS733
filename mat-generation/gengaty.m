confirm_recursive_rmdir(0);
rmdir('cachestudy/gaty', 's')
mkdir('cachestudy')
mkdir('cachestudy', 'gaty')

updir = 'cachestudy/gaty';
for n=2**10
  curdir = strcat(['n' num2str(n)]);
	fullcurdir = strcat([updir '/' curdir]);
	rmdir(fullcurdir, 's');
	mkdir(updir, curdir);
	up2dir = fullcurdir;
	for d = (1/(2**3))
		curdir = strcat('d0_125');
		fullcurdir = strcat([up2dir '/' curdir]);
		rmdir(fullcurdir, 's');
		mkdir(up2dir, curdir);
		up3dir = fullcurdir;
		for count = 1:10
			printf("n=%d d=0.125 c=%d\n", floor(n), floor(count));
			A = sprand(n,n,d);
			if(abs(A(n,n)) < 1)
				A(n,n) = A(n,n) + 3;
			end
			printf("Generated A\n");
			fflush(stdout);
			A = A' * A;
			B = sprand(n,1,d);
			printf("Generated B\n");
			fflush(stdout);
			if(abs(B(n,1)) < 1)
				B(n,1) = B(n,1) + 3;
			end
			[i,j,v] = find(A);
			At = [floor(i)-1, floor(j)-1, v];
			[i,j,v] = find(B);
			Bt = [floor(i)-1, floor(j)-1, v];
			save("-ascii", strcat([fullcurdir '/' num2str(count) '.A.mat']),'At');
			save("-ascii", strcat([fullcurdir '/' num2str(count) '.B.mat']), 'Bt');
		end
	end
end

