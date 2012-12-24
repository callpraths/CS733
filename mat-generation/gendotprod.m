confirm_recursive_rmdir(0);
rmdir('cachestudy/dotproduct', 's')
mkdir('cachestudy')
mkdir('cachestudy', 'dotproduct')

updir = 'cachestudy/dotproduct';
for n=2**10
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
			printf("n=%d d=%d c=%d\n", floor(n), floor(d*1000), floor(count));
			fflush(stdout);
			A = sprand(n,1,d);
			if(abs(A(n,1)) < 1)
				A(n,1) = A(n,1) + 3;
			end
			B = sprand(n,1,d);
			if(abs(B(n,1)) < 1)
				B(n,1) = B(n,1) + 3;
			end
			[i,j,v] = find(A);
			At = [floor(i)-1, floor(j)-1, v];
			[i,j,v] = find(B);
			Bt = [floor(i)-1, floor(j)-1, v];
			save('-ascii', strcat([fullcurdir '/' num2str(count) '.A.mat']), 'At');
			save('-ascii', strcat([fullcurdir '/' num2str(count) '.B.mat']), 'Bt');
		end
	end
end
