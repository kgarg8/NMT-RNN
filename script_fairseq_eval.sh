file=results_fairseq.txt
[ -e $file ] && rm $file

topk=-1; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=1; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=10; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=50; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=100; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=0; topp=0.5; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=0; topp=0.8; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=0; topp=0.9; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=0; topp=0; beam=5
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file

topk=0; topp=0; beam=10
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> results_fairseq.txt
sacrebleu data/wmt16_en_de/pred_topk_${topk}_topp_${topp}_beam_${beam}.txt < data/wmt16_en_de/test.de >> $file