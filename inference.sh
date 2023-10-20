python ./src/mt5_aste.py \
    --model_name_or_path ./aste_model \
    --do_predict \
    --validation_file ./data/valid/valid.json \
    --test_file ./data/test/test.json \
    --output_dir ./aste_model/infer \
    --per_device_eval_batch_size=2 \
    --overwrite_output_dir \
    --predict_with_generate \
    --max_predict_samples 100000 \
    --max_source_length 1024 \
    --max_target_length 512 \
    --text_column question \
    --summary_column answer
