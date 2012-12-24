function B = sp2triplet(A)
  [m,n] = size(A);
	[x,i,v] = sp2adj(A);
	ex = zeros(length(i),1);
	for j=1:n
		ex(x(j):x(j+1)-1,1) = j * ones(x(j+1)-x(j),1); 
	end
	B = [i-1,ex-1,v];
endfunction
