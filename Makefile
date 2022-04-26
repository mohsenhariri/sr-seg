PATH := ./env/bin:${PATH}
PY := python3

.PHONY: all clean env

# include .env.inference
include .env.train
export


download:
		nnUNet_download_pretrained_model Task001_BrainTumour


predict:
		nnUNet_predict -i ./nnUNet_raw_data_base/nnUNet_raw_data/Task001_BrainTumour/imagesTs -o ./result -t Task001_BrainTumour

train1:
		nnUNet_train CONFIGURATION TRAINER_CLASS_NAME TASK_NAME_OR_ID FOLD  --npz (additional options)

train2:
		nnUNet_train 3d_fullres nnUNetTrainerV2 4 0

t1:
		nnUNet_print_available_pretrained_models >> available_pretrained_models.txt

c1:
		nnUNet_convert_decathlon_task -i Task01

# TESTED
pipelineconfig:
		nnUNet_plan_and_preprocess -t 1

train:
		# nnUNet_train network network_trainer task fold
		# nnUNet_train 3d_fullres nnUNetTrainerV2  Task001_BrainTumour  'all'
		nnUNet_train 3d_fullres nnUNetTrainerV2  1  5




