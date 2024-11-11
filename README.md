# PaleAale6




# PaleAle 6.0: Protein Relative Solvent Accessibility Prediction



## Overview

PaleAle 6.0 is a deep learning-based pipeline for predicting **protein relative solvent accessibility (RSA)**, a key feature in understanding protein 3D structure and function. Using advanced natural language processing (NLP) techniques with pre-trained language models (PLMs), PaleAle 6.0 predicts RSA values and provides classifications at various thresholds.

## Key Features

- **Real-value RSA Prediction**: Continuous RSA values for each residue.
- **Two-state Classification**: Binary RSA prediction (exposed or buried with a 25% threshold).
- **Four-state Classification**: Multi-threshold RSA classification (4%, 25%, and 50%).

The model is trained to capture long-range sequence interactions using bidirectional recurrent neural networks and convolutional layers, leveraging ESM-based embeddings to improve prediction accuracy.

## Requirements

Before running PaleAle 6.0, ensure that the following dependencies are installed:

- **Python 3.x**
- **Biopython**: Install via `pip install biopython`
- **Torch**: Install via `pip install torch`

Alternatively, install all dependencies at once by running:

```bash
pip install -r requirements.txt
```

## Getting Started

### Step 1: Download the Pipeline

Clone this repository to get started:

```bash
git clone https://github.com/YourUsername/PaleAle6.git
cd PaleAle6
```

### Step 2: Prepare Your Protein FASTA File

- Place your input **protein** FASTA file in the `data/dataset/` folder.
- Name the FASTA file `set3.fasta` to match the default configuration.

### Step 3: Make the Main Script Executable

Before running the pipeline, make the main script executable:

```bash
chmod +x PaleAle6.sh
```

### Step 4: Run the Pipeline

With the FASTA file in place, execute the main script to start the prediction process:

```bash
./PaleAle6.sh
```

### Step 5: View the Results

The pipeline will generate predictions saved in JSON files for each RSA prediction type. You can find the results in the following folders:

- **RSA_2C/test_ensemble.json**: Contains two-state RSA predictions (exposed/buried classification).
- **RSA_4C/test_ensemble.json**: Contains four-state RSA predictions based on thresholds of 4%, 25%, and 50%.
- **RSA_realValue/test_ensemble.json**: Contains real-valued RSA predictions for each residue.

Each JSON file provides the RSA prediction for each residue in your input protein sequence(s), enabling detailed analysis and comparison across RSA categories.

## Example Usage

If you’d like to try the pipeline with example data, add a sample FASTA file named `set3.fasta` to the `data/dataset/` directory and run:

```bash
./PaleAle6.sh
```

After the pipeline completes, you can view the results by opening the respective JSON files in each predictor folder.





## Contact

For questions or further information, please contact Wafa Alanazi at [wafa.alanazi@ucdconnect.ie](mailto:wafa.alanazi@ucdconnect.ie).

