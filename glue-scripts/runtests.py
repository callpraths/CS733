#!/usr/bin/python

from os.path import join
import os
import popen2



def run_add_tests(binary):
  for mat_dir in [join('matrices', 'handwritten', 'add')]:
    files = os.listdir(mat_dir)
    try:
      mats = set([f.split('.')[0] for f in files])
    except:
      print('Could not obtain list of matrices in the directory ' + mat_dir)
    for mat in mats:
      fullmat = join(mat_dir, mat)
      cmd = binary + " " + fullmat + ".A.mat " + fullmat + ".B.mat " + fullmat + ".C.mat"
      print(cmd)
      child = popen2.Popen3(cmd)
      child.wait()
      try:
        print(child.fromchild.read())
      except:
        pass
      try:
        print(child.childerr.read())
      except:
        pass

def run_dotproduct_tests(binary):
  for mat_dir in [join('matrices', 'handwritten', 'dotproduct')]:
    files = os.listdir(mat_dir)
    try:
      mats = set([f.split('.')[0] for f in files])
    except:
      print('Could not obtain list of matrices in the directory ' + mat_dir)
    for mat in mats:
      fullmat = join(mat_dir, mat)
      cmd = binary + " " + fullmat + ".A.mat " + fullmat + ".B.mat " + fullmat + ".c.mat"
      print(cmd)
      child = popen2.Popen3(cmd)
      child.wait()
      try:
        print(child.fromchild.read())
      except:
        pass
      try:
        print(child.childerr.read())
      except:
        pass

def run_gaty_tests(binary):
  for mat_dir in [join('matrices', 'handwritten', 'gaty')]:
    files = os.listdir(mat_dir)
    try:
      mats = set([f.split('.')[0] for f in files])
    except:
      print('Could not obtain list of matrices in the directory ' + mat_dir)
    for mat in mats:
      fullmat = join(mat_dir, mat)
      cmd = binary + " " + fullmat + ".A.mat " + fullmat + ".B.mat " + fullmat + ".C.mat"
      print(cmd)
      child = popen2.Popen3(cmd)
      child.wait()
      try:
        print(child.fromchild.read())
      except:
        pass
      try:
        print(child.childerr.read())
      except:
        pass

run_add_tests('bin/test_ppp_addtp')
run_add_tests('bin/test_ppp_addsg')
run_dotproduct_tests('bin/test_ppp_dotproducttp')
run_dotproduct_tests('bin/test_ppp_dotproductsg')
run_gaty_tests('bin/test_ppp_gatysg')
run_gaty_tests('bin/test_ppp_gatytp')
