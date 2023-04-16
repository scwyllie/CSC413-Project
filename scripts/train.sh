timestamp=$(date +%Y-%m-%d-%H-%M-%S-%N)
DATASET='mnist'
architecture='MnistNetPate'
CUDA_VISIBLE_DEVICES=0,1,2,3  python main.py \
--path /h/321/scwyllie/model-extraction-iclr \
--data_dir /mfsnic/datasets \
--dataset ${DATASET} \
--begin_id 0 \
--end_id 1 \
--num_querying_parties 1 \
--num_models 5 \
--num_epochs 50 \
--architecture ${architecture} \
--commands 'train_private_models' \
--class_type 'multiclass' \
--device_ids 0 \
--momentum 0.5 \
--lr 0.1 \
--weight_decay 1e-4 \
--scheduler_type 'ReduceLROnPlateau' \
--debug 'True' \
--query_set_type 'numpy' \
--transfer_type '' \
--test_models_type 'private' \
--log_every_epoch 0 \
#--weak_classes '' \
#--multilabel_prob_threshold 0.5 \
#--pick_labels -1 \
