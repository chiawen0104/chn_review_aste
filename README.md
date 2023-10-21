# Chinese ASTE Dataset
Our dataset serves as an accessible resource for conducting Aspect Sentiment Triplet Extraction (ASTE) on Chinese restaurant reviews from Google Maps.

For further information, please refer to our paper titled "Automatic Construction of a Chinese Review Dataset for Aspect Sentiment
Triplet Extraction via Iterative Weak Supervision".


### File Structure
- `data/raw/raw.csv`: It consists of 104358 raw restaurant reviews collected from Google Maps.
- `data/train/train.json`, `valid/valid.json`, `test/test.json`: These files respectively contain 64007, 5000, and 5000 restaurant reviews, along with the corresponding processed labels generated by our models.
- `data/test/test_gold300.json`: This file includes a subset of the testing set, consisting of 300 reviews with manually annotated ground truth.
- `src/mt5_aste.py`: python codes of ASTE model.


## Data Information
|Dataset|Size|Source Model|Annotator|
|-------|----|------------|---------|
|train|64007|Self-train-C||
|valid|5000|Rule-Based System||
|test|5000|Union of models|ChatGPT|
|test_gold300|300|Union of models|Labeling worker|


### Usage
- Create conda env:
`conda create --name <env> --file requirements.txt`

- Click the link to download the base model:
`https://drive.google.com/file/d/11IqXcfXR501RSJIXoFCiBy9EhXsboohG/view?usp=share_link`   
  Unzip `drcd_qa.zip` and put it in `model/`.

- Train the mT5 ASTE model:
`bash train.sh`

- Inference:
`bash inference.sh`   
  Please train the model first and note your path for output model.
