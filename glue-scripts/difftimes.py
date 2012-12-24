#!/usr/bin/python

import re
import os
from os.path import join

out = open('times.diff', 'w')
for root, dirs, files in os.walk('cachestudy/algo'):
  times = []
  for f in files:
    if '.times' in f:
      ps = f.split('.')
      try:
        sfile = join(root, ps[0] +'.test_conjugate_gradientsg.success')
        succ = open(sfile, 'r')
        s = succ.read()
        succ.close()
      except Exception, e:
        continue
      if '0' in s:
        continue
      try:
        sfile = join(root, ps[0] +'.test_conjugate_gradienttp.success') 
        succ = open(sfile, 'r')
        s = succ.read()
        succ.close()
      except:
        continue
      if '0' in s:
        continue
      h = open(join(root, f), 'r')
      s = h.read()
      h.close()
      ts = re.findall(r'[\d.]+', s)
      times = times + [(float(ts[0]), float(ts[1]))]
  if len(times) > 0:
    m = 0.0
    sd = 0.0
    for (sg,tp) in times:
      m = m + (sg - tp)
    m = m / len(times)
    for (sg, tp) in times: 
      sd = sd + ((sg - tp) - m)**2
    sd = sd / len(times)
    import math
    try:
      t = m / math.sqrt(sd)
      t = t * math.sqrt(len(times)-1)
      out.write("%s %d %lf %lf %lf\n" %(root, len(times), m, math.sqrt(sd), t))
    except:
      t = m
      out.write("%s %d %lf %lf %lf[nosd]\n" %(root, len(times), m, math.sqrt(sd), t))
out.close()

