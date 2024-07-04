# heatwave_warnings

This repository contains the code to generate figures used in the paper.

[Scores](https://github.com/nci/scores) is used to produce verification results.

## Reproducing the results

### Prerequisites

You will require:

* [miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)
* [snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)

### Running snakemake

With your conda/mamba snakemake environment activated (see pre-requisites), run:

```shell
snakemake --cores 1 --use-conda all
```

## Troubleshooting

If you see a message like `/bin/bash: line 1: activate: No such file or directory` it means snakemake is confused about which conda installation to used. Solve this by activating your snakemake environment and installing conda in it. For example:

```shell
mamba activate snakemake
mamba install -c anaconda conda
```

If you see the message `The 'mamba' command is not available in the shell`, install mamba into your environment:

```shell
mamba activate snakemake
mamba install mamba
```

## Directory layout

* `src/`: The notebooks and python code used to produce the figures and maps in the Jive paper.
* `data/`: The data used by the notebooks.
* `results/`: The figures produced by running snakemake to reproduce report contents are placed here.
* `published_results/`: The figures produced by the paper author, to compare against.
* `logs/`: The logs from running snakemake. Only useful if there are issues running the code.
* `workflow/envs`: the conda environments used for each python workflow in the snakemake file.
* `Snakefile`: the snakemake file to reproduce paper figures.
