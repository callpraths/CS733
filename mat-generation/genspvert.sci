function B = genspvert(n, d, t)
	A = sprand(n,1,d,t);
	if(abs(A(n,1)) < 1)
		A(n,1) = A(n,1) + 3;
	end
	[x,i,v] = sp2adj(A);
	ex = ones(length(i),1);
	B = [i-1,ex-1,v];
endfunction
