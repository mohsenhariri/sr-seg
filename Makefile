PATH := ./env/bin:${PATH}
PY := python3

.PHONY: all clean

include .env
export


download:
		nnUNet_download_pretrained_model Task001_BrainTumour


predict:
		nnUNet_predict -i ./nnUNet_raw_data_base/nnUNet_raw_data/Task001_BrainTumour/imagesTs -o ./result -t Task001_BrainTumour
