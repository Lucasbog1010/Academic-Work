# CMS Silicon Detector Noise Analysis

**Master's thesis | UCLouvain | 2025–2026**

## Project overview

This repository accompanies the Master's dissertation **“Study of the performance of the first silicon modules of the future CMS tracker for HL-LHC.”** The research investigates **common-mode noise (CMN)** in silicon detector modules developed for the CMS Outer Tracker upgrade at CERN's High-Luminosity LHC.

The study examines two detector technologies:

- **2S (Strip–Strip)** modules
- **PS (Pixel–Strip)** modules

Measurements from individual-module **burn-in tests** are compared with **sector tests**, in which modules are integrated on a shared *dee* support structure with common mechanical, electrical and cooling services. Event-level occupancy distributions are compared with statistical models accounting for independent channel noise, common-mode fluctuations and correlations among front-end electronics.

## Technical contributions

- Analysis of experimental detector measurements using **Python**, **ROOT/PyROOT**, and **Jupyter**.
- Investigation of common-mode noise in 2S and PS readout systems.
- Comparison of measured occupancy distributions with statistical models.
- Comparison of results across burn-in and integrated sector test configurations.
- Production of plots and quantitative comparisons to support detector characterisation.

## Files

| File | Description |
| --- | --- |
| [`CMnoise2S.ipynb`](CMnoise2S.ipynb) | Analysis notebook for 2S detector modules. |
| [`CMnoisePS.ipynb`](CMnoisePS.ipynb) | Analysis notebook for PS detector modules. |
| [`Master_Thesis_Lucas_Bogaert_2026.pdf`](Master_Thesis_Lucas_Bogaert_2026.pdf) | Complete Master's dissertation, including methodology, results, limitations and references. |

## Running the analysis

The notebooks were developed in a local **PyROOT** environment and contain absolute paths to the original environment and ROOT datasets. **They are provided as research documentation, not as immediately reproducible standalone examples.** The underlying `.root` data files are **not included** in this repository.

To adapt the notebooks to another machine:

1. Install a compatible Python, Jupyter and CERN ROOT/PyROOT environment.
2. Obtain authorised access to the relevant experimental ROOT files.
3. Replace machine-specific `ROOT_LIB` and input file paths with local paths.
4. Execute cells in order and check compatibility with the installed ROOT version.

No dependency versions have been verified for a fresh installation.

## Research context and attribution

**Author:** Lucas Bogaert  
**Institution:** UCLouvain, School of Physics  
**Academic year:** 2025–2026  
**Supervisor:** Christophe Delaere

This repository contains thesis-related academic work. The dissertation cites background literature and includes figures from external sources; their original attribution remains in the PDF. Permission to publish the thesis and notebooks does not automatically establish a separate licence for third-party figures or datasets.

## Publication note

Before uploading publicly, review notebook cell outputs, embedded figures, file paths, module identifiers, and any dataset-derived content to confirm the publication authorisation covers them. Do not upload raw experimental data unless specifically authorised.
