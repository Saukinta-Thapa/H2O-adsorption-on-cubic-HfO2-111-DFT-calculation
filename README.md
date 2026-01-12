# DFT data for H2O adsorption on cubic HfO2 (111)

This repository contains representative data supporting the manuscript:

**“The effect of temperature, pressure, and H2O coverage on surface stability of cubic HfO2 (111) using ab initio thermodynamics”**

Saukinta Thapa, Jong-Yoon Kim, Ha-Neul Kim, Jun-Yeong Jo, Yeong-Cheol Kim

---

## Overview
This work investigates the thermodynamic stability of hydroxylated cubic HfO2 (111)
surfaces as a function of H2O coverage, temperature, and pressure using
density functional theory (DFT) combined with an ab initio thermodynamics framework.

The repository is provided to ensure transparency and reproducibility of the reported
DFT calculations and derived thermodynamic results.

---

## Computational details
- **DFT code:** VASP 6.4.0
- **Exchange–correlation functional:** PBE-GGA
- **Pseudopotentials:** PAW (Hf with 5p semicore states)
- **Plane-wave cutoff energy:** 500 eV
- **Electronic convergence:** 1×10⁻⁴ eV
- **Ionic relaxation criterion:** 1×10⁻² eV Å⁻¹
- **Slab model:** cubic HfO2 (111)
- **Vacuum thickness:** 15 Å
- **Relaxation scheme:** bottom layer fixed, upper layer fully relaxed
- **Thermodynamic analysis:** ab initio thermodynamics with vibrational, entropy,
  and pressure contributions
- **Post-processing:** VASPKIT 

---

## Repository contents

### Geometry optimization of cubic HfO2 and H2O molecule with their representative VASP input files:
- Bulk cubic HfO2:
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - Readme.md
  - Fq
    - INCAR
    - Readme.md
- H2O molecule:
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - Readme.md
  - Fq
    - INCAR
    - Readme.md

### Surface energy calculations of low index planes of cubic HfO2 
- Surface Energy
  - 100 plane
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md

  - 110 plane
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md

  - 111 plane
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md
    - Not Fix 111 plane
      - INCAR
      - POSCAR (initial structure)
      - CONTCAR (optimized structure)
      - KPOINTS

### Adsorption of H20 on cubic HfO2 (111) surface
- Water(H2O) coverages:
  - 0.25 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md

  - 0.5 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md
  
  - 0.75 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md
      
  - 1.0 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - Fq
      - INCAR
      - Readme.md

### Processed data
- Representative thermodynamic data used to construct:
  - Gibbs adsorption free energy plots

    <img width="1028" height="495" alt="image" src="https://github.com/user-attachments/assets/690445c4-b56e-4204-9fdc-14f3ddac98b1" />

  - Pressure–temperature (P–T) phase diagram

    <img width="394" height="401" alt="image" src="https://github.com/user-attachments/assets/b175eee1-836e-42fb-b396-e7bfa3e4bc7d" />
---

## Notes on data availability
- **POTCAR files are not included** due to VASP license restrictions.
- Large raw output files (e.g., WAVECAR, CHGCAR, full OUTCAR files) are not publicly shared.
- The provided files are representative and sufficient to reproduce the results reported
  in the manuscript.
- Full raw data are available from the corresponding author upon reasonable request.
- Materials Data on HfO2 by Materials Project. United States: N. p., 2020. Web. doi:10.17188/1267443.
