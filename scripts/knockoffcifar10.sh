timestamp=$(date +%Y-%m-%d-%H-%M-%S-%N)
DATASET='cifar10'
architecture='ResNet34'
CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
--path /h/321/scwyllie/model-extraction-iclr/knockoff-extract \
--data_dir /mfsnic/datasets \
--dataset ${DATASET} \
--begin_id 0 \
--end_id 1 \
--num_querying_parties 1 \
--num_models 1 \
--num_epochs 100 \
--architecture ${architecture} \
--commands 'basic_model_stealing_attack' \
--class_type 'multiclass' \
--device_ids 0 1 \
--momentum 0.5 \
--threshold 0 \
--sigma_gnmax 2.0 \
--sigma_threshold 0 \
--lr 0.1 \
--weight_decay 1e-4 \
--scheduler_type 'ReduceLROnPlateau' \
--debug 'False' \
--query_set_type 'numpy' \
--transfer_type '' \
--test_models_type 'private' \
--log_every_epoch 0 \
--mode 'knockoff' \
--num_optimization_loop 0 \
--adaptive_batch_size 1000 \
--retrain_extracted_model False \
--attacker_dataset 'cifar100' \
--target_model 'victim' \
#--weak_classes '' \
#--multilabel_prob_threshold 0.5 \
