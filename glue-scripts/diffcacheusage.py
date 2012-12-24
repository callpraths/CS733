#!/usr/bin/python

import re
import os
from os.path import join

def analyze(out, root, arch, exe, fs1, fs2):
  d1msgs = []
  llmsgs = []
  d1mtps = []
  llmtps = []
  fs1.sort()
  fs2.sort()
  for f in fs1:
    h = open(join(root,f), 'r')
    s = h.read()
    h.close()
    m = re.findall(r'[\d.]+%', s)
    t = m[2]
    d1msgs = d1msgs + [float(t[0:len(t)-1])]
    t = m[5]
    llmsgs = llmsgs + [float(t[0:len(t)-1])]
  for f in fs2:
    h = open(join(root,f), 'r')
    s = h.read()
    h.close()
    m = re.findall(r'[\d.]+%', s)
    t = m[2]
    d1mtps = d1mtps + [float(t[0:len(t)-1])]
    t = m[5]
    llmtps = llmtps + [float(t[0:len(t)-1])]
  d1 = []
  ll = []
  for i in range(len(d1msgs)):
    d1 = d1 + [d1msgs[i] - d1mtps[i]]
  for i in range(len(llmsgs)):
    ll = ll + [llmsgs[i] - llmtps[i]]
  md1 = 0
  sd1 = 0
  mll = 0
  sll = 0
  for i in range(len(d1)):
    md1 = md1 + d1[i]
    mll = mll + ll[i] 
  md1 = md1 / len(d1)
  mll = mll / len(d1)
  for i in range(len(d1)):
    sd1 = sd1 + (d1[i] - md1)**2
    sll = sll + (ll[i] - mll)**2
  sd1 = sd1 / len(d1)
  sll = sll / len(d1)
  from math import sqrt
  out.write("%s %s %s: " %(exe, arch, root))
  try:
    td1 = sqrt(len(d1)-1) * md1 / sqrt(sd1)
    out.write("(%f %f %f) "%(md1, sd1, td1))
  except:
    out.write("(%f %f %f) [novar] " %(md1, sd1, md1))
  try:
    tll = sqrt(len(d1)-1) * mll / sqrt(sll)
    out.write("(%f %f %f)\n"%(mll, sll, tll))
  except:
    out.write("(%f %f %f) [novar]\n" %(mll, sll, mll))

out = open('cachestudy.diff', 'w')
for root, dirs, files in os.walk('cachestudy'):
  relfiles = []
  configs = {}
  for f in files:
    if '.cacheusage' in f:
      parts = f.split('.')
      exe = parts[len(parts)-3]
      exe = exe[0:len(exe)-2]
      cache = exe[len(exe)-2:len(exe)]
      arch = parts[len(parts)-2]
      if arch+"_"+exe in configs:
        (a,e,fs1, fs2) = configs[arch+"_"+exe]
        if 'sg.' in f:
          fs1 = fs1 + [f]
        else:
          fs2 = fs2 + [f]
        configs[arch+"_"+exe] = (arch,exe,fs1,fs2)
      else:
        fs1 = []
        fs2 = []
        if 'sg.' in f:
          fs1 = fs1 + [f]
        else:
          fs2 = fs2 + [f]
        configs[arch+"_"+exe] = (arch,exe,fs1,fs2)

  for tt in configs:
    (arch, exe, fs1, fs2) = configs[tt]
    analyze(out, root, arch, exe, fs1, fs2)
out.close()

