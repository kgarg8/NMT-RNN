# Neural Machine Translation using RNN

## Setup environment

```
conda create -n nmt python=3.6

conda install pytorch cudatoolkit=11.1 -c pytorch -c nvidia

pip install OpenNMT-py

pip install sacrebleu
```

## Run commands

## Build Vocab
```
onmt_build_vocab -config wmt16_ro_en.yaml -n_sample -1
```

## Train
```
onmt_train -config wmt16_ro_en.yaml
```

## Translate
```
onmt_translate -model data/wmt16_ro_en/run/model_step_100000.pt -src data/wmt16_ro_en/test.en -tgt data/wmt16_ro_en/test.ro -output data/wmt16_ro_en/pred.txt -gpu 0 -verbose
```

## Evaluate
```
sacrebleu data/wmt16_ro_en/pred.txt < data/wmt16_ro_en/test.ro
```

## NMT Using FAIRSEQ

### Translate Pre-Trained Model
```
python fairseq_translate.py # for default config

# Other Sample configs:

--sampling --sampling-topk 10

--sampling --sampling-topp 0.8

--beam 10
```

### For Quality (sacreblue metric) Evaluation
```
sacrebleu data/wmt16_en_de/pred_topk_0_topp_0_beam_5.txt < data/wmt16_en_de/test.de
```

### For Diversity Evaluation
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
