# Waste Classifier — Streamlit App

Simple Streamlit demo to classify waste images into Organic (O) vs Recycling (R).

## Run locally
1. `git clone <repo>`
2. `pip install -r requirements.txt`
3. `streamlit run streamlit_app.py`

## Deploy
Push to GitHub and deploy with Streamlit Cloud: https://share.streamlit.io/

## Custom weights
Place your trained `.pth` files in `models/` with names:
- `Resnet50_best.pth`
- `MobileNetV2_best.pth`
- `EfficientNetB0_best.pth`
