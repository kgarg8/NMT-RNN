file=../data/wmt16_ro_en/diversity_results_sentpiece.txt
[ -e $file ] && rm $file

topk=-1; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=1; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=10; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=50; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=100; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0.5; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0.8; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0.9; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0; beam=10
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file

topk=0; topp=0; beam=1
exp=topk_${topk}_topp_${topp}_beam_${beam}
echo -e "\npred_topk_${topk}_topp_${topp}_beam_${beam}\n" >> $file
python ../eval_diversity.py "../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.txt" >> $file