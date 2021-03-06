#!/usr/bin/env bash
DATE=`date '+%Y-%m-%d-%H-%M-%S'`

CUDA_VISIBLE_DEVICES=0 python train_hdn.py \
    --resume_training --resume_model ./pretrained_models/HDN_1_iters_alt_normal_I_LSTM_with_bias_with_dropout_0_5_nembed_256_nhidden_512_with_region_regression_resume_SGD_best.h5 \
    --dataset_option=normal  --MPS_iter=3 \
    --caption_use_bias --caption_use_dropout \
    --rnn_type LSTM_normal --evaluate  |  tee logs.out


# iter = 1
#[170/5000][Evaluation] Top-50 Recall: 11.536%
#[170/5000][Evaluation] Top-100 Recall: 13.517%


#iter=2
#[155/5000][Evaluation] Top-50 Recall: 3.923%
#[155/5000][Evaluation] Top-100 Recall: 6.385%


