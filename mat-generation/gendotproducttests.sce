exec sp2triplet.sci

rmdir('gentests/dotproduct', 's')
mkdir('gentests')
mkdir('gentests', 'dotproduct')

sz = stacksize()
stacksize(50000000)

ns = [10 100]
for n=ns
	for d = 0.1:0.1:0.5
		for count = 1:10
			printf("n=%d d=%d c=%d\n", int(n), int(d*100), int(count));
			A = sprand(n,1,d);
			if(abs(A(n,1)) < 1)
				A(n,1) = A(n,1) + 3;
			end
			At = sp2triplet(A);
			B = sprand(n,1,d);
			if(abs(B(n,1)) < 1)
				B(n,1) = B(n,1) + 3;
			end
			Bt = sp2triplet(B);	
			C = A' * B;
			fprintfMat(strcat(['gentests/dotproduct/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.A.mat']), At);
			fprintfMat(strcat(['gentests/dotproduct/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.B.mat']), Bt);
			cfilename = strcat(['gentests/dotproduct/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.c.mat']);
			cfile = file('open', cfilename);
			fprintf(cfile, "%f", full(C));
			file('close', cfile);
		end
	end
end

stacksize(sz(1))
