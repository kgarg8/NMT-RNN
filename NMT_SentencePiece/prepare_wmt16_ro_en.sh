#!/bin/bash

# set relevant paths
SP_PATH=/usr/local/bin
DATA_PATH=../data/wmt16_ro_en
TEST_PATH=$DATA_PATH/test

# set vocabulary size and source and target languages
vocab_size=32000
sl=en
tl=ro

# Download the default datasets into the $DATA_PATH; mkdir if it doesn't exist
mkdir -p $DATA_PATH
mkdir -p $TEST_PATH

export PATH=$SP_PATH:$PATH

# Data preparation using SentencePiece
spm_train --input=$DATA_PATH/train.en --model_prefix=$DATA_PATH/wmt$sl$tl --vocab_size=$vocab_size --character_coverage=1

spm_encode --model=$DATA_PATH/wmt$sl$tl.model < $DATA_PATH/train.en > $DATA_PATH/$train.en.sp
spm_encode --model=$DATA_PATH/wmt$sl$tl.model < $DATA_PATH/train.ro > $DATA_PATH/$train.ro.sp

spm_encode --model=$DATA_PATH/wmtenro.model < $DATA_PATH/valid.en > $DATA_PATH/valid.en.sp 
spm_encode --model=$DATA_PATH/wmtenro.model < $DATA_PATH/valid.ro > $DATA_PATH/valid.ro.sp 

spm_encode --model=$DATA_PATH/wmtenro.model < $DATA_PATH/test.en > $DATA_PATH/test.en.sp 
spm_encode --model=$DATA_PATH/wmtenro.model < $DATA_PATH/test.ro > $DATA_PATH/test.ro.sp 
