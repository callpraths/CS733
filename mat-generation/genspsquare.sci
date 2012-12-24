function B = genspsquare(n, d, t)
	A = sprand(n,n,d,t);
	if(abs(A(n,n)) < 1)
		A(n,n) = A(n,n) + 3;
	end
	A = A' * A;
	[x,i,v] = sp2adj(A);
	ex = zeros(length(i),1);
	for j=1:n
		ex(x(j):x(j+1)-1,1) = j * ones(x(j+1)-x(j),1); 
	end
	B = [i-1,ex-1,v];
endfunction
