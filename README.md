# OpenNMT-py: Open-Source Neural Machine Translation

## Setup environment

```
conda create -n nmt python=3.6

conda install pytorch cudatoolkit=11.1 -c pytorch -c nvidia

pip install OpenNMT-py

pip install sacrebleu
```

For using `sentencepiece` for the on-the-fly tokenization, follow the steps on that repository


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
sacrebleu data/wmt16_ro_en/pred.txt < data/wmt16_ro_en/run/model_step_100000.pt
```

## Credits
[OpenNMT-py](https://github.com/OpenNMT/OpenNMT-py)
