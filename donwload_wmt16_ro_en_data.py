from datasets import load_dataset

dataset = load_dataset('wmt16', 'ro-en')

base = 'data/wmt16_ro_en/'

with open(base + 'test.en','w') as en:
    for data in dataset['test']['translation']:
        en.write(data['en']+'\n')
with open(base + 'test.ro','w') as ro:
    for data in dataset['test']['translation']:
        ro.write(data['ro']+'\n')
