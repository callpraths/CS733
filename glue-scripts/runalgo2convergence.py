#!/usr/bin/python

from os.path import join
import os
import popen2

def run_tests(topdir, binary):
  for root, dirs, files in os.walk(topdir):
    relfiles = []
    try:
      mats = set([f.split('.')[0] for f in files])
    except:
      print('Could not get matrices from %s' % (root))
    for mat in mats:
      fullmat = join(root, mat)
      cmd = 'bin/' + binary + " " + fullmat + ".A.mat " + fullmat + ".B.mat " + fullmat + ".X.mat"
      print(cmd)
      child = popen2.Popen3(cmd, capturestderr=True)
      child.wait()
      try:
        print(child.fromchild.read())
      except:
        pass
      out = open(fullmat + "." + binary + ".success", 'w')
      err = child.childerr.read()
      if err == '':
        out.write('1')
      else:
        out.write('0')
        print(err)
      out.close()

import sys
if len(sys.argv) > 2:
  run_tests('cachestudy/algo/' + sys.argv[2], 'test_conjugate_gradient' + sys.argv[1])
if len(sys.argv) > 1:
  run_tests('cachestudy/algo', 'test_conjugate_gradient' + sys.argv[1])
else:
  run_tests('cachestudy/algo', 'test_conjugate_gradientsg')
  run_tests('cachestudy/algo', 'test_conjugate_gradienttp')
