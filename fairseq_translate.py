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
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topk=-1)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topk=1)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topk=10)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topk=50)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topk=100)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topp=0.5)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topp=0.8)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], sampling=True, sampling_topp=0.9)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], beam=1)
    # pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], beam=5)
    for item in pred:
        file2.write("%s\n" % item)