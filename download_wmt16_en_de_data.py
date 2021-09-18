from datasets import load_dataset

dataset = load_dataset('wmt16', 'de-en')

base = 'data/wmt16_en_de/'

with open(base + 'test.en','w') as en:
    for data in dataset['test']['translation']:
        en.write(data['en']+'\n')
with open(base + 'test.de','w') as de:
    for data in dataset['test']['translation']:
        de.write(data['de']+'\n')