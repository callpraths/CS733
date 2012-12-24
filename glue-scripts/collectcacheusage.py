#!/usr/bin/python

import re
import os
from os.path import join

def stats(ls):
  m1 = 0
  for i in range(len(ls)-1):
    m1 = m1 + ls[i]
  m2 = m1 + ls[len(ls)-1]
  m1 = m1/(len(ls)-1)
  m2 = m2/len(ls)
  v1 = 0
  v2 = 0
  for i in range(len(ls)-1):
    v1 = v1 + (ls[i]-m1)**2
    v2 = v2 + (ls[i]-m2)**2
  v1 = v1/(len(ls)-1)
  v2 = v2 + (ls[len(ls)-1]-m2)**2
  v2 = v2/len(ls)
  md = 100 * abs(m2-m1)/m1
  vd = 100 * abs(v2-v1)/v1
  return(m1, v1, md, vd)


def analyze(out, root, arch, exe, fs):
  d1msgs = []
  llmsgs = []
  d1mtps = []
  llmtps = []
  for f in fs:
    h = open(join(root,f), 'r')
    s = h.read()
    h.close()
    m = re.findall(r'[\d.]+%', s)
    parts = f.split('.')
    if 'sg' in parts[len(parts)-3]:
     t = m[2]
     d1msgs = d1msgs + [float(t[0:len(t)-1])]
     t = m[5]
     llmsgs = llmsgs + [float(t[0:len(t)-1])]
    elif 'tp' in parts[len(parts) - 3]:
     t = m[2]
     d1mtps = d1mtps + [float(t[0:len(t)-1])]
     t = m[5]
     llmtps = llmtps + [float(t[0:len(t)-1])]
    else:
      raise Exception, 'unkonwn file extension in collect::analyze'
  out.write("%s %s %s\n" % (root, arch , exe))
  try:
    (m1, v1, md, vd) = stats(d1msgs)
    out.write('d1msgs:\t%lf\t%lf\t%lf\t%lf\n'%(m1, v1, md, vd))
  except:
    pass
  try:
    (m1, v1, md, vd) = stats(llmsgs)
    out.write('llmsgs:\t%lf\t%lf\t%lf\t%lf\n'%(m1, v1, md, vd))
  except: 
    pass
  try:
    (m1, v1, md, vd) = stats(d1mtps)
    out.write('d1mtps:\t%lf\t%lf\t%lf\t%lf\n'%(m1, v1, md, vd))
  except:
    pass
  try:
    (m1, v1, md, vd) = stats(llmtps)
    out.write('llmtps:\t%lf\t%lf\t%lf\t%lf\n'%(m1, v1, md, vd))
  except:
    pass
  out.write('\n')

out = open('cachestudy.summary', 'w')
for root, dirs, files in os.walk('cachestudy'):
  relfiles = []
  configs = {}
  for f in files:
    if '.cacheusage' in f:
      parts = f.split('.')
      exe = parts[len(parts)-3] 
      arch = parts[len(parts)-2]
      if exe+'_'+arch in configs:
        (e,a,fs) = configs[exe+'_'+arch]
        fs = fs + [f]
        configs[exe+"_"+arch] = (e,a,fs)
      else:
        configs[exe+"_"+arch] = (exe, arch, [f])
  for tt in configs:
    try:
      (exe, arch, fs) = configs[tt]
      analyze(out, root, arch, exe, fs)
    except Exception, e:
      print("%s %s %s failed: " % (root, arch, exe))
      print(e)
out.close()
