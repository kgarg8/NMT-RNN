# Use pre-trained models FAIRSEQ and translate
import torch, argparse, pdb
from tqdm import tqdm

def main(args):
    
    # Prepare kwargs
    kwargs = None
    if args.sampling:
        kwargs = {'sampling': True, 'sampling_topk': args.sampling_topk, 'sampling_topp': args.sampling_topp}
    elif args.beam:
        kwargs = {'beam': args.beam}

    # Load pre-trained model
    en2de = torch.hub.load('pytorch/fairseq', 'conv.wmt17.en-de', tokenizer='moses', bpe='subword_nmt')
    en2de.eval()
    en2de.cuda()

    # Open test file
    test_file = open('data/wmt16_en_de/test.en', 'r')
    Lines = test_file.readlines()
    print('Testing samples = ', len(Lines))
    print(kwargs)

    batch_size = 1000
    batches = len(Lines) // batch_size
    if len(Lines) % batch_size != 0:
        batches += 1

    # Generate predictions
    filename='data/wmt16_en_de/pred_topk_{}_topp_{}_beam_{}.txt'.format(args.sampling_topk, args.sampling_topp, args.beam)
    pred_file = open(filename, 'w')
    for i in tqdm(range(batches)):
        if (i+1)*batch_size < len(Lines): y = batch_size
        else:                             y = len(Lines) - i*batch_size
        
        pred = en2de.translate(Lines[i*batch_size : i*batch_size+y], **kwargs)
        for item in pred:
            pred_file.write("%s\n" % item)

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("--sampling" , default=False, action='store_true')
    parser.add_argument("--sampling_topk" , default=0, type=int)
    parser.add_argument("--sampling_topp" , default=0, type=float)
    parser.add_argument("--beam" , default=1, type=int)

    args = parser.parse_args()
    main(args)