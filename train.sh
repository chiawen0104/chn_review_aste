python ./src/mt5_aste.py \
    --model_name_or_path ./models/drcd_qa \
    --do_train \
    --do_eval \
    --do_predict \
    --train_file ./data/train/train.json \
    --validation_file ./data/valid/valid.json \
    --test_file ./data/test/test.json \
    --output_dir ./models/aste_model \
    --per_device_train_batch_size=2 \
    --per_device_eval_batch_size=2 \
    --overwrite_output_dir \
    --predict_with_generate \
    --max_train_samples 64028 \
    --max_eval_samples 5000 \
    --max_predict_samples 5000 \
    --max_source_length 1024 \
    --max_target_length 512 \
    --generation_max_length 512 \
    --text_column question \
    --summary_column answer \
    --num_train_epochs 5 \
    --evaluation_strategy steps \
    --logging_strategy steps \
    --logging_steps 3000 \
    --eval_steps 16000 \
    --save_steps 16000 \
    --save_total_limit 1 \
    --metric_for_best_model aop_f \
    --greater_is_better True \
    --load_best_model_at_end True 
