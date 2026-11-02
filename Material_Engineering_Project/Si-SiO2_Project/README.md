# Ab Initio Study of Si/SiO₂ Interface Band Offsets

**Computational materials science · Density Functional Theory · Semiconductor interfaces**

Academic project for **LMAPR2451 — Atomistic and Nanoscopic Simulations**, UCLouvain (2026).

## Overview

This project investigates the electronic properties of a silicon/silicon dioxide interface relevant to semiconductor devices. The study models crystalline silicon and idealized β-cristobalite SiO₂ using **ABINIT** and Density Functional Theory (DFT), with particular attention to numerical convergence, structural relaxation, electrostatic potential and band alignment.

## Work covered

- Convergence studies for plane-wave cutoff energies, k-point sampling and lattice constants.
- Electronic band structures and densities of states for Si and β-cristobalite SiO₂.
- Construction and structural relaxation of a Si/SiO₂ interface model.
- Electrostatic-potential analysis and evaluation of valence/conduction band offsets.
- Discussion of DFT-LDA limitations, including band-gap underestimation and the idealized crystalline oxide model.

## Selected findings

| Quantity | Silicon | β-Cristobalite SiO₂ |
|---|---:|---:|
| Selected plane-wave cutoff | 12 Ha | 36 Ha |
| k-point grid | 4 × 4 × 4 | 1 × 1 × 1 |
| Calculated lattice constant | 5.394 Å | 7.360 Å |

These values are reported in the accompanying academic report and are specific to its modelling assumptions.

## Tools and methods

ABINIT · DFT / LDA · plane-wave calculations · numerical convergence · electronic band structures · density of states · atomistic interface modelling. The report also discusses AbiPy plotting and VESTA visualisation.

## Read the report

The PDF includes selected **ABINIT input-file examples in its appendix**. Standalone executable simulation files, pseudopotentials and raw output datasets were not supplied with this portfolio; therefore the repository is a documented academic project, not a fully reproducible simulation package.
