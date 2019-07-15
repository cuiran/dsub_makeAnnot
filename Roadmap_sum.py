#!/usr/bin/env python3

import subprocess
import os

ANNOT_DIR = os.environ['ANNOT_DIR']
CHR = os.environ['CHR']
OUT_DIR = os.environ['OUT_DIR']

# make directories
subprocess.call(['mkdir','/mnt/data/annot/'])
subprocess.call(['mkdir','/mnt/data/results/'])

# copy data
subprocess.call(['gsutil','-m','cp','gs://ran/functionally_informed_fm/data/annots/Roadmap_UKBB/*.'+CHR+'.annot.gz','/mnt/data/annot/'])

# run script 
subprocess.call(['python3','/home/pyscripts/make_Roadmap_sum.py',
    '--annot-folder',ANNOT_DIR,
    '--chrom',CHR,
    '--out-folder',OUT_DIR])

subprocess.call(['gsutil','-m','cp','/mnt/data/results/*','gs://ran/functionally_informed_fm/data/annots/Roadmap_UKBB/Roadmap_control/'])
