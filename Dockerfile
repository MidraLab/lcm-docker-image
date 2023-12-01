# ベースイメージ
FROM python:3.10.12-slim

# 作業ディレクトリの設定
WORKDIR /usr/src/app

# 必要なライブラリのインストール
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Hugging Faceからモデルをダウンロード
RUN apt-get update && apt-get install -y wget
RUN wget https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fix_fp16.safetensors -O Counterfeit-V3.0_fix_fp16.safetensors
