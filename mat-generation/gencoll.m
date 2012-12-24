matsdir = 'mats'
confirm_recursive_rmdir(0);
rmdir("cachestudy/algo/collection", "s");
mkdir("cachestudy");
mkdir("cachestudy", "algo");
mkdir("cachestudy/algo", "collection");
outdir = "cachestudy/algo/collection";
fs = dir(matsdir);
[nfiles,trash] = size(fs);
for i = 3:nfiles
	fname = fs(i,1).name;
	printf("Processing %s\n", fname);
	fflush(stdout);
	load(strcat([matsdir '/' fname]));
	A = Problem.A;
	[m n] = size(A);
	compute = 1;
	if m ~= n
		printf('Not Square! m = %d n = %d\n', m, n);
		fflush(stdout);
		compute = 0;
	end
	if A ~= A'
		printf('Not Symmetric!\n');
		fflush(stdout);
		compute = 0;
	end
	if compute == 1
		b = sprand(m, 1, 0.4);
		bmin = min(b(b>0));
		if b(m,1) == 0
			b(m,1) = bmin;
		end
		printf('Solving\n');
		fflush(stdout);
		[x, flag, err, iter, res] = cgs(A,b,1e-6,n*10);
		if flag == 0
			x = sparse(x);
			[i,j,v] = find(A);
			At = [floor(i)-1, floor(j)-1, v];
			[i,j,v] = find(b);	
			bt = [floor(i)-1, floor(j)-1, v];
			[i,j,v] = find(x);
			xt = [floor(i)-1, floor(j)-1, v];
			printf("Saving\n");
			fflush(stdout);
			save('-ascii', strcat([outdir '/' fname '.A.mat']), 'At');
			save('-ascii', strcat([outdir '/' fname '.B.mat']), 'bt');
			save('-ascii', strcat([outdir '/' fname '.X.mat']), 'xt');
		else
			printf('Could not solve, error %f\n', err);
			fflush(stdout);
		end
	end
end
