clear;
outdir = 'cachestudy/algo/ufget';
rmdir(outdir, 's');
mkdir('cachestudy');
mkdir('cachestudy', 'algo');
mkdir('cachestudy/algo', 'ufget');

lfiles = [];
outfiles = [];
curdir = 'mat';
dirs = ls(curdir);
l = size(dirs);
l = l(1);
count = 0;
for i = 1:l
	d = dirs(i)
	curdir2 = strcat([curdir '/' d]);
	files = ls(curdir2);
	l = size(files);
	l = l(1);
	for j = 1:l
		f = files(j);
		lfile = strcat([curdir2 '/' f]);
		outfile= strcat([d, "_", f]);
		lfiles = [lfiles lfile];
		outfiles = [outfiles outfile];
		count = count + 1;
	end
end

for i = 1:count
	infile = lfiles(i);
	outfile = outfiles(i);
	printf("processing %s\n", infile);
	loadmatfile(infile);
	Problem
	A = Problem.A;
	[m n] = size(A);
	if m != n
		printf('Not Square! m = %d n = %d', m, n);
	end
	if A != A'
		printf('Not Symmetric!');
	end
	b = sprand(m, 1, 0.4);
	bmin = min(b(b>0));
	if b(m,1) == 0
		b(m,1) = bmin;
	end

	x = A\b;

	At = sp2triplet(A);
	bt = sp2triplet(b);	
	bt = sp2triplet(b);
	fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
	fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
	fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
end
