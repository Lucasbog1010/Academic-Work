# Compton Scattering & Gamma-Ray Detector Characterization

**UCLouvain | Ionizing Radiation Detection and Nuclear Instrumentation (LPHYS2102) | June 2025**

A laboratory project exploring **gamma-ray detection, scintillation detector calibration, and Compton scattering**. The work combines a practical nuclear-instrumentation setup with spectroscopic measurements, detector-performance evaluation, and comparison of measured scattering data with theoretical predictions.

**Authors of the report:** L. Bogaert, M. Bouhalbane, and R. Dartois.

📄 **[Read the complete laboratory report](Compton_scattering.pdf)**

## Project overview

The investigation was carried out in two stages:

1. **Characterize and calibrate a NaI(Tl) scintillation detector** using gamma emissions from known radioactive reference sources.
2. **Use the calibrated detector to investigate Compton scattering**, measuring how the energy and angular distribution of scattered gamma rays vary with scattering angle.

The experimental work was completed as part of the *Ionizing Radiation Detection and Nuclear Instrumentation* course at UCLouvain.

## Experimental setup

The gamma-detection system used:

- A **NaI(Tl) scintillation detector** coupled to a **photomultiplier tube (PMT)**.
- A **high-voltage supply**, **preamplifier**, and **amplifier** for the detector's electronic signal chain.
- A **multichannel analyser (MCA)** for acquiring pulse-height spectra.
- **Na-22, Co-60, Cs-137, and Eu-152** radioactive reference sources for detector calibration and characterization.

For the scattering measurements, a **Cs-137 source** illuminated an **aluminium scattering target**. The detector was positioned at different angles relative to the target, with shielding used to reduce unwanted radiation background.

## Methods

### 1. Detector energy calibration

- Acquired gamma-ray pulse-height spectra from reference sources.
- Fitted spectral photopeaks using **Gaussian signal models and a linear background**.
- Established a **channel-to-energy calibration relationship** from identified gamma-ray energies.

### 2. Detector performance

- Characterized **energy resolution** as a function of photon energy.
- Investigated **detection efficiency** as a function of source distance and gamma-ray energy.
- Used fitted models and uncertainty estimates to assess measured trends and limitations.

### 3. Compton scattering measurements

- Measured scattered gamma-ray energy spectra at a range of **scattering angles**.
- Compared measured photon energies with the predictions of **Compton scattering kinematics**.
- Used the energy–angle relationship to estimate the **electron rest energy**.
- Studied the **angular differential scattering cross section** and compared results with the **Klein–Nishina model**.

## Selected findings

- Gamma-ray energy peaks from several reference sources enabled energy calibration of the NaI(Tl) detector.
- The measured energy of scattered photons **decreased with increasing scattering angle**, consistent with Compton-scattering theory.
- The experimentally derived electron rest energy was **495 ± 11 keV**, compared with the accepted value of approximately **511 keV** (about **3% difference**).
- The measured differential cross-section trend broadly followed the Klein–Nishina prediction, while the report discusses discrepancies and the limitations of the efficiency correction.

The report also notes that some fits yielded unexpectedly large reduced chi-square values, pointing to possible uncertainty-estimation or fitting-method limitations. These caveats matter when interpreting the results.

## Skills demonstrated

- Gamma-ray spectroscopy and **radiation detection**
- **Scintillation detectors**, photomultipliers, and nuclear signal-processing electronics
- **Detector calibration**, energy resolution, and efficiency characterization
- Experimental setup, acquisition, and measurement planning
- **Spectrum/peak fitting**, statistical analysis, and uncertainty assessment
- Physics-based numerical analysis and experimental–theoretical comparison
- Collaborative laboratory work and technical scientific reporting

## Repository contents

```text
Compton-Scattering-Gamma-Detector-Characterization/
├── README.md                 # Project introduction and technical summary
└── Compton_scattering.pdf    # Full laboratory report (June 2025)
```

## Notes

This repository contains the **report** for an academic group laboratory project. It does **not** currently include raw measurement data or analysis scripts. Experimental details, plots, equations, and discussion of uncertainties can be found in the PDF.

## Citation

Bogaert, L., Bouhalbane, M., & Dartois, R. (2025). *Compton scattering*. Laboratory report, *Ionizing Radiation Detection and Nuclear Instrumentation (LPHYS2102)*, UCLouvain.
