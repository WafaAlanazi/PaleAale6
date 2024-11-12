#!/bin/bash

# Step 1: Run Python scripts in the porter6 directory
cd /yourpath/PaleAle6

# Step 1: Convert FASTA to JSON
echo "Running fasta2json.py..."
python fasta2json.py
if [ $? -ne 0 ]; then
    echo "Error running fasta2json.py. Exiting."
    exit 1
fi

# Step 2: Generate embeddings with ESM
echo "Running emb_esm3_fasta.py..."
python emb_esm3_fasta.py
if [ $? -ne 0 ]; then
    echo "Error running emb_esm3_fasta.py. Exiting."
    exit 1
fi

# Step 3: Run Python scripts in RSA_2C directory
cd /yourpath/PaleAle6/RSA_2C

echo "Running new_test_ensemble.py in RSA_2C..."
python new_test_ensemble.py
if [ $? -ne 0 ]; then
    echo "Error running new_test_ensemble.py. Exiting."
    exit 1
fi

# Step 4: Run Python scripts in RSA_4C directory
cd /yourpath/PaleAle6/RSA_4C

echo "Running new_test_ensemble.py in RSA_4C..."
python new_test_ensemble.py
if [ $? -ne 0 ]; then
    echo "Error running new_test_ensemble.py. Exiting."
    exit 1
fi

# Step 5: Run Python scripts in RSA_realValue directory
cd /yourpath/PaleAle6/RSA_realValue

echo "Running new_test_ensemble.py in RSA_realValue..."
python new_test_ensemble.py
if [ $? -ne 0 ]; then
    echo "Error running new_test_ensemble.py. Exiting."
    exit 1
fi

echo "All steps completed successfully!"
