exec sp2triplet.sci

rmdir('gentests/add', 's')
mkdir('gentests')
mkdir('gentests', 'add')

sz = stacksize()
stacksize(50000000)

ns = [10 100]
for n=ns
	for d = 0.1:0.1:0.5
		for count = 1:10
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
			C = A + B;
			Ct = sp2triplet(C);
			fprintfMat(strcat(['gentests/add/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.A.mat']), At);
			fprintfMat(strcat(['gentests/add/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.B.mat']), Bt);
			fprintfMat(strcat(['gentests/add/n' string(n) 'd' string(int(d*100)) 'c' string(count) '.C.mat']), Ct);
		end
	end
end

stacksize(sz(1))
