#!/usr/bin/env bash
name='Inference_bird_b0_10ss'
expid='bird_b0_10s_fast_limit5'


CUDA_VISIBLE_DEVICES=7 python -m main test with "./configs/${expid}.yaml" \
    exp.name="${name}" \
    exp.savedir="./logs/" \
    exp.ckptdir="./logs/" \
    exp.saveckpt="./ckpts_${expid}/" \
    exp.tensorboard_dir="./tensorboard/" \
    exp.debug=True \
    load_mem=True \
    --name="${name}" \
    -D \
    -p \
    --force \
