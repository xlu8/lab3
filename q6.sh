#!/bin/bash
cat 4HKD.pdb | grep "ATOM" | sort -nk 11
