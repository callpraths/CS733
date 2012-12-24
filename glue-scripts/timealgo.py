#!/usr/bin/python

from os.path import join
import os
import popen2
import time


def run_tests(topdir, binary):
  for root, dirs, files in os.walk(topdir):
    relfiles = []
    try:
      mats = set([f.split('.')[0] for f in files])
    except:
      print('Could not get matrices from %s' % (root))
    for mat in mats:
      fullmat = join(root, mat)
      out = open(fullmat + ".times", 'w')

      cmd = 'cset shield -e bin/' + binary + "sg " + fullmat + ".A.mat " + fullmat + ".B.mat "
      print(cmd)
      start = time.time()
      child = popen2.Popen4(cmd)
      child.wait()
      duration = time.time() - start
      out.write(binary + 'sg ' + str(duration) + '\n') 

      cmd = 'cset shield -e bin/' + binary + "tp " + fullmat + ".A.mat " + fullmat + ".B.mat "
      print(cmd)
      start = time.time()
      child = popen2.Popen4(cmd)
      child.wait()
      duration = time.time() - start
      out.write(binary + 'tp ' + str(duration) + '\n')

      out.close()
      try:
        print(child.fromchild.read())
      except:
        pass


run_tests('cachestudy/algo', 'test_conjugate_gradient')
