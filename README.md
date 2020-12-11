# BERT-AS-SERVICE

This is the docker image implementation for https://github.com/hanxiao/bert-as-service

## Versions

There are two tags, one is cpu and one is gpu. GPU requires CUDA environment.

## Quick Start

Use the given docker-compose.yml file, run 

```bash
docker-compose up -d
```

This docker-compose file uses the CPU version with model uncased_L-4_H-256_A-4, the port number is 5555,5556 and 8125, see hanxiao/bert-as-service for details.


## Supported Environment Variable

You can change the bert.env environment file or pass the environment variable to the container directly

### MODEL

```bash

# Uncased English
uncased_L-2_H-128_A-2 
uncased_L-4_H-256_A-4
uncased_L-4_H-512_A-8
uncased_L-8_H-512_A-8
uncased_L-12_H-768_A-12
uncased_L-24_H-1024_A-16 

# Cased English
cased_L-12_H-768_A-12.zip

# Whole Word Masking English
wwm_uncased_L-24_H-1024_A-16
wwm_cased_L-24_H-1024_A-16

# Multilingual Cased
multi_cased_L-12_H-768_A-12

# Chinese
chinese_L-12_H-768_A-12

```

### NUM_WORKERS

This is the number of workers you want for the BERT API Server, default is 2

## Use your own models

The service reads model from

```bash
/app/models/$MODEL #$MODEL is the environment variable
```

You can mount a volume that contains your models to the path, so it can use your custom BERT models.