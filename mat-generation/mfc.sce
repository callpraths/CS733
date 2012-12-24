
rmdir("cachestudy/algo/collection", "s");
mkdir("cachestudy");
mkdir("cachestudy", "algo");
mkdir("cachestudy/algo", "collection");
gbstack = (2**30)/(32);
stacksize(gbstack*4);

    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_20.mat';
    outfile = 'JGD_Trefethen_Trefethen_20.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_150.mat';
    outfile = 'JGD_Trefethen_Trefethen_150.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_20b.mat';
    outfile = 'JGD_Trefethen_Trefethen_20b.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_200b.mat';
    outfile = 'JGD_Trefethen_Trefethen_200b.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_500.mat';
    outfile = 'JGD_Trefethen_Trefethen_500.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_300.mat';
    outfile = 'JGD_Trefethen_Trefethen_300.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_200.mat';
    outfile = 'JGD_Trefethen_Trefethen_200.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_2000.mat';
    outfile = 'JGD_Trefethen_Trefethen_2000.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_Trefethen/Trefethen_700.mat';
    outfile = 'JGD_Trefethen_Trefethen_700.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Boeing/msc01440.mat';
    outfile = 'Boeing_msc01440.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Boeing/msc01050.mat';
    outfile = 'Boeing_msc01050.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Boeing/bcsstk34.mat';
    outfile = 'Boeing_bcsstk34.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Boeing/msc00726.mat';
    outfile = 'Boeing_msc00726.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Boeing/msc04515.mat';
    outfile = 'Boeing_msc04515.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/JGD_BIBD/bibd_81_2.mat';
    outfile = 'JGD_BIBD_bibd_81_2.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh2em5.mat';
    outfile = 'Pothen_mesh2em5.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh2e1.mat';
    outfile = 'Pothen_mesh2e1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh3em5.mat';
    outfile = 'Pothen_mesh3em5.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh1em1.mat';
    outfile = 'Pothen_mesh1em1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh1e1.mat';
    outfile = 'Pothen_mesh1e1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh3e1.mat';
    outfile = 'Pothen_mesh3e1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pothen/mesh1em6.mat';
    outfile = 'Pothen_mesh1em6.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/TKK/plbuckle.mat';
    outfile = 'TKK_plbuckle.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex9.mat';
    outfile = 'FIDAP_ex9.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex15.mat';
    outfile = 'FIDAP_ex15.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex3.mat';
    outfile = 'FIDAP_ex3.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex13.mat';
    outfile = 'FIDAP_ex13.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex10hs.mat';
    outfile = 'FIDAP_ex10hs.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex5.mat';
    outfile = 'FIDAP_ex5.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex33.mat';
    outfile = 'FIDAP_ex33.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/FIDAP/ex10.mat';
    outfile = 'FIDAP_ex10.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Nasa/nasa1824.mat';
    outfile = 'Nasa_nasa1824.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Nasa/nasa2146.mat';
    outfile = 'Nasa_nasa2146.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Bai/mhd3200b.mat';
    outfile = 'Bai_mhd3200b.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Bai/mhdb416.mat';
    outfile = 'Bai_mhdb416.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Bai/mhd4800b.mat';
    outfile = 'Bai_mhd4800b.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Cannizzo/sts4098.mat';
    outfile = 'Cannizzo_sts4098.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Pajek/Journals.mat';
    outfile = 'Pajek_Journals.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Norris/fv1.mat';
    outfile = 'Norris_fv1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Norris/fv3.mat';
    outfile = 'Norris_fv3.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Norris/fv2.mat';
    outfile = 'Norris_fv2.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm25.mat';
    outfile = 'HB_bcsstm25.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos3.mat';
    outfile = 'HB_nos3.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm26.mat';
    outfile = 'HB_bcsstm26.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk19.mat';
    outfile = 'HB_bcsstk19.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos5.mat';
    outfile = 'HB_nos5.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/lund_b.mat';
    outfile = 'HB_lund_b.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk07.mat';
    outfile = 'HB_bcsstk07.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm05.mat';
    outfile = 'HB_bcsstm05.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm08.mat';
    outfile = 'HB_bcsstm08.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk11.mat';
    outfile = 'HB_bcsstk11.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos7.mat';
    outfile = 'HB_nos7.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk20.mat';
    outfile = 'HB_bcsstk20.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk12.mat';
    outfile = 'HB_bcsstk12.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm11.mat';
    outfile = 'HB_bcsstm11.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm19.mat';
    outfile = 'HB_bcsstm19.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm20.mat';
    outfile = 'HB_bcsstm20.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm22.mat';
    outfile = 'HB_bcsstm22.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/plat1919.mat';
    outfile = 'HB_plat1919.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk27.mat';
    outfile = 'HB_bcsstk27.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos2.mat';
    outfile = 'HB_nos2.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk22.mat';
    outfile = 'HB_bcsstk22.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk26.mat';
    outfile = 'HB_bcsstk26.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos6.mat';
    outfile = 'HB_nos6.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/plat362.mat';
    outfile = 'HB_plat362.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm09.mat';
    outfile = 'HB_bcsstm09.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk04.mat';
    outfile = 'HB_bcsstk04.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk10.mat';
    outfile = 'HB_bcsstk10.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk09.mat';
    outfile = 'HB_bcsstk09.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm24.mat';
    outfile = 'HB_bcsstm24.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos1.mat';
    outfile = 'HB_nos1.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk05.mat';
    outfile = 'HB_bcsstk05.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm02.mat';
    outfile = 'HB_bcsstm02.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm07.mat';
    outfile = 'HB_bcsstm07.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk06.mat';
    outfile = 'HB_bcsstk06.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm23.mat';
    outfile = 'HB_bcsstm23.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/662_bus.mat';
    outfile = 'HB_662_bus.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm12.mat';
    outfile = 'HB_bcsstm12.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk03.mat';
    outfile = 'HB_bcsstk03.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk21.mat';
    outfile = 'HB_bcsstk21.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk02.mat';
    outfile = 'HB_bcsstk02.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/gr_30_30.mat';
    outfile = 'HB_gr_30_30.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm06.mat';
    outfile = 'HB_bcsstm06.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk14.mat';
    outfile = 'HB_bcsstk14.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk13.mat';
    outfile = 'HB_bcsstk13.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/685_bus.mat';
    outfile = 'HB_685_bus.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstm21.mat';
    outfile = 'HB_bcsstm21.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/1138_bus.mat';
    outfile = 'HB_1138_bus.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk23.mat';
    outfile = 'HB_bcsstk23.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/nos4.mat';
    outfile = 'HB_nos4.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk01.mat';
    outfile = 'HB_bcsstk01.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/bcsstk08.mat';
    outfile = 'HB_bcsstk08.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/494_bus.mat';
    outfile = 'HB_494_bus.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/HB/lund_a.mat';
    outfile = 'HB_lund_a.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      
    try
    clear;
    exec sp2triplet.sci;
    outdir = "cachestudy/algo/collection";
    infile = 'mat/Bates/Chem97ZtZ.mat';
    outfile = 'Bates_Chem97ZtZ.mat';
    printf("processing %s\n", infile);
	  loadmatfile(infile);

    A = Problem.A;
    [m n] = size(A);
    compute = 1;
    if m ~= n
      printf('Not Square! m = %d n = %d', m, n);
      compute = 0;
    end
    if A ~= A'
      printf('Not Symmetric!');
      compute = 0;
    end
    if compute == 1
      b = sprand(m, 1, 0.4);
      bmin = min(b(b>0));
      if b(m,1) == 0
        b(m,1) = bmin;
      end

			[x, flag, err, iter, res] = gmres(A,b,n,1e-6,n*100);
      if flag == 0
        x = sparse(x);
        At = sp2triplet(A);
        bt = sp2triplet(b);	
        xt = sp2triplet(x);
        fprintfMat(strcat([outdir '/' outfile '.A.mat']), At);
        fprintfMat(strcat([outdir '/' outfile '.B.mat']), bt);
        fprintfMat(strcat([outdir '/' outfile '.X.mat']), xt);
      else
        print('Could not solve, error %lf', err);
      end
    end
    catch
    printf('Failed\n');
    end
      