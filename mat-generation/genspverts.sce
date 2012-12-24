exec genspsquare.sci

rmdir('vertmats', 's')
mkdir('vertmats')

sz = stacksize()
stacksize(50000000)

ns = [10 100 1000]
for n=ns
	for d = 0.1:0.1:0.5
		for count = 1:20
			printf("n=%d d=%d c=%d\n", int(n), int(d*100), int(count));
			B = genspsquare(n,d,'uniform');
			fprintfMat(strcat(['vertmats' '/' 'vertmat' '_n' string(n) '_d' string(int(d*100)) '_c' string(count)]), B);
		end
	end
end

stacksize(sz(1))
