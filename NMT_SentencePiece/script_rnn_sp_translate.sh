file=../data/wmt16_ro_en/results_rnn_sentpiece.txt
[ -e $file ] && rm $file

topk=-1; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk -1 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=1; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 1 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=10; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 10 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=50; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 50 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=100; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 100 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0.5; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0.5 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0.8; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0.8 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0.9; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0.9 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0; beam=5
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0 -beam_size 5

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0; beam=10
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0 -beam_size 10

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file

topk=0; topp=0; beam=1
exp=topk_${topk}_topp_${topp}_beam_${beam}

echo "Translating ${exp}..."
echo "pred_topk_${topk}_topp_${topp}_beam_${beam}" >> $file

onmt_translate -model ../data/wmt16_ro_en/run/model_step_100000.pt -src ../data/wmt16_ro_en/test.en.sp -tgt ../data/wmt16_ro_en/test.ro.sp -output ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_topk_${topk}_topp_${topp}_beam_${beam}.sp -gpu 0 -random_sampling_topk 0 -random_sampling_topp 0 -beam_size 1

spm_decode -model ../data/wmt16_ro_en/wmtenro.model -input_format piece < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}.sp > ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp}

sacrebleu ../data/wmt16_ro_en/test.ro < ../data/wmt16_ro_en/run/test.ro.hyp_model_step_100000_${exp} >> $file