# Use pre-trained models FAIRSEQ and translate
import torch, pdb
from tqdm import tqdm

# English to German
en2de = torch.hub.load('pytorch/fairseq', 'conv.wmt17.en-de', tokenizer='moses', bpe='subword_nmt')
en2de.eval()
en2de.cuda()

file1 = open('data/wmt16_en_de/test.en', 'r')
Lines = file1.readlines()
print('Testing samples = ', len(Lines))

batch_size = 1000
batches = len(Lines) // batch_size
if len(Lines) % batch_size != 0:
    batches += 1

file2 = open('data/wmt16_en_de/pred.txt', 'w')
for i in tqdm(range(batches)):
    if (i+1)*batch_size < len(Lines):
        y = batch_size
    else:
        y = len(Lines) - i*batch_size
    pred = en2de.translate(Lines[i*batch_size : i*batch_size+y])
    for item in pred:
        file2.write("%s\n" % item)