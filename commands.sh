#!/bin/bash
sbatch --mem=16gb -p gpu -c gpup100 --gres=gpu:2 job1.slrum


