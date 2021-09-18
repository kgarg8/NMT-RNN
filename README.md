# Neural Machine Translation using RNN

## Setup environment

```
conda create -n nmt python=3.6

conda install pytorch cudatoolkit=11.1 -c pytorch -c nvidia

pip install OpenNMT-py

pip install sacrebleu

cd NMT_Vanilla
```

## NMT_Vanilla (w/o SentencePiece)

### Download data (WMT16 English - Romanian)

```
python donwload_wmt16_ro_en_data.py
```

### Build Vocab
```
onmt_build_vocab -config wmt16_ro_en.yaml -n_sample -1
```

### Train
```
onmt_train -config wmt16_ro_en.yaml
```

### Translate
```
onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en -tgt ../data/wmt16_ro_en/test.ro -output ../data/wmt16_ro_en/pred.txt -gpu 0 -verbose
```

### Evaluate
```
sacrebleu ../data/wmt16_ro_en/pred.txt < ../data/wmt16_ro_en/test.ro
```

## NMT Using FAIRSEQ

### Download data (WMT16 English - German)
```
python donwload_wmt16_en_de_data.py
```

### Installing FairSeq

```
git clone https://github.com/pytorch/fairseq

cd fairseq

pip install --editable ./

cd NMT_FairSeq
```

### Translate Pre-Trained Model
```

python fairseq_translate.py # default config

# Other sample configs:

--sampling --sampling-topk 10

--sampling --sampling-topp 0.8

--beam 10
```

### Quality (sacreblue metric) Evaluation
```
sacrebleu data/wmt16_en_de/pred_topk_0_topp_0_beam_5.txt < data/wmt16_en_de/test.de
```

### Diversity Evaluation
```
python eval_diversity.py "data/wmt16_en_de/pred_topk_0_topp_0_beam_5.txt"
```

### Automate for multiple (decoding) configs
```
./script_fairseq_translate.py

./script_fairseq_eval.sh

./script_diversity_fairseq.sh
```

## Credits
[OpenNMT-py](https://github.com/OpenNMT/OpenNMT-py)

[FAIRSEQ](https://github.com/pytorch/fairseq)
