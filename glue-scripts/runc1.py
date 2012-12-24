#!/usr/bin/python

from os.path import join
import os
import popen2

def grind(exe, topdir, ds, lls):
  print("Grinding %s %s" % (exe, topdir))
  for root, dirs, files in os.walk(topdir):
    relfiles = []
    for f in files:
      if '.A.' in f:
        parts = f.split('.')
        relfiles = relfiles + [parts[0]]
    relfiles.sort()
    for f in relfiles:
      cmd = 'valgrind --tool=cachegrind %s %s/%s.A.mat %s/%s.B.mat' %(exe, root, f, root, f)
      #cmds = [(cmd, '0')]
      cmds = []
      if ds != [] and lls != []:
        for i in range(len(ds)):
          d = ds[i]
          ll = lls[i]
          (d1,d2,d3) = d
          (ll1,ll2,ll3) = ll
          cmd = 'valgrind --tool=cachegrind --D1=%s,%s,%s --LL=%s,%s,%s %s %s/%s.A.mat %s/%s.B.mat' %(d1,d2,d3,ll1,ll2,ll3,exe, root, f, root, f)
          ext = '%s_%s_%s_%s_%s_%s' %(d1,d2,d3,ll1,ll2,ll3)
          cmds = cmds + [(cmd,ext)]
      for (cmd, ext) in cmds:
        print(cmd)
        try:
          child = popen2.Popen3(cmd, capturestderr=True)
          child.wait()
          exeparts = exe.split('/')
          ext = '.%s.%s.cacheusage' %(exeparts[len(exeparts)-1], ext)
          out = open(join(root, f+ext), 'w')
          out.write(child.childerr.read())
          out.close()
        except Exception, e:
          print(e)

       
import sys

ds = [(2**8,2,32), (2**7,2,32), (2**11,2,32)]
lls= [(2**20,2,32), (2**20,2,32), (2**20,2,32)]
print("Running with %s" % str(sys.argv))
if len(sys.argv) == 2:
  grind('bin/test_ppp_%ssg' %(sys.argv[1]), join('cachestudy', sys.argv[1]), ds, lls)
  grind('bin/test_ppp_%stp' %(sys.argv[1]), join('cachestudy', sys.argv[1]), ds, lls)
elif len(sys.argv) == 3:
  cmd = 'bin/test_ppp_%s%s' % (sys.argv[1], sys.argv[2])
  path = join('cachestudy', sys.argv[1])
  grind(cmd, path, ds, lls)
else:
  grind('bin/test_ppp_addsg', join('cachestudy', 'add'), ds, lls)
  grind('bin/test_ppp_addtp', join('cachestudy', 'add'),  ds, lls)
  grind('bin/test_ppp_dotproductsg', join('cachestudy', 'dotproduct'),  ds, lls)
  grind('bin/test_ppp_dotproducttp', join('cachestudy', 'dotproduct'),  ds, lls)
  grind('bin/test_ppp_gatysg', join('cachestudy', 'gaty'),  ds, lls)
  grind('bin/test_ppp_gatytp', join('cachestudy', 'gaty'),  ds, lls)
  
