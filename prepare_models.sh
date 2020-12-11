#!/bin/sh

cd /app/models

models=(https://storage.googleapis.com/bert_models/2020_02_20/uncased_L-2_H-128_A-2.zip https://storage.googleapis.com/bert_models/2020_02_20/uncased_L-4_H-256_A-4.zip https://storage.googleapis.com/bert_models/2020_02_20/uncased_L-4_H-512_A-8.zip https://storage.googleapis.com/bert_models/2020_02_20/uncased_L-8_H-512_A-8.zip https://storage.googleapis.com/bert_models/2020_02_20/uncased_L-12_H-768_A-12.zip https://storage.googleapis.com/bert_models/2019_05_30/wwm_uncased_L-24_H-1024_A-16.zip https://storage.googleapis.com/bert_models/2019_05_30/wwm_cased_L-24_H-1024_A-16.zip https://storage.googleapis.com/bert_models/2018_11_23/multi_cased_L-12_H-768_A-12.zip https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip https://storage.googleapis.com/bert_models/2018_10_18/cased_L-12_H-768_A-12.zip )


for t in ${models[@]}; do
  wget -c $t
done

for f in *.zip; do 
  unzip -d "${f%*.zip}" "$f";
done

rm *.zip

