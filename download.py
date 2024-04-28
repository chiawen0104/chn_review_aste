from huggingface_hub import snapshot_download

model_id = "chiawen0104/mt5-drcd-qa" # hugginFace's model name
snapshot_download(
    repo_id=model_id,
    local_dir="models/drcd_qa/",
    local_dir_use_symlinks=False,
    revision="main"
)