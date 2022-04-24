PATH := ./env/bin:${PATH}
PY := python3

.PHONY: all clean

include .env
export


download:
		nnUNet_download_pretrained_model Task001_BrainTumour