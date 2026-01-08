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
  - FQ
    -INCAR
    -KPOINTS
- H2O molecule:
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - FQ
    -INCAR
    -KPOINTS

### Surface energy calculations of low index planes 
- cubic HfO2(111) 
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - FQ
    -INCAR
    -KPOINTS

- cubic HfO2(110)
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - FQ
    -INCAR
    -KPOINTS

- cubic HfO2(100)
  - INCAR
  - POSCAR (initial structure)
  - CONTCAR (optimized structure)
  - KPOINTS
  - FQ
    -INCAR
    -KPOINTS

### Adsorption of H20 on cubic HfO2 (111) surface
- H2O coverages:
  - 0.25 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - FQ
      -INCAR
      -KPOINTS

  - 0.5 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - FQ
      -INCAR
      -KPOINTS
  
  - 0.75 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - FQ
      -INCAR
      -KPOINTS
      
  - 1.0 ML
    - INCAR
    - POSCAR (initial structure)
    - CONTCAR (optimized structure)
    - KPOINTS
    - FQ
      -INCAR
      -KPOINTS

### Processed data
- Representative thermodynamic data used to construct:
  - Gibbs adsorption free energy plots

    <img width="1023" height="496" alt="image" src="https://github.com/user-attachments/assets/a3c3378b-0b8f-42a7-9d28-72a732d1e8e5" />

  - Pressure–temperature (P–T) phase diagram

    <img width="497" height="498" alt="image" src="https://github.com/user-attachments/assets/a63fce2b-4873-4a9d-884c-e5b9bf13157b" />

---

## Notes on data availability
- **POTCAR files are not included** due to VASP license restrictions.
- Large raw output files (e.g., WAVECAR, CHGCAR, full OUTCAR files) are not publicly shared.
- The provided files are representative and sufficient to reproduce the results reported
  in the manuscript.
- Full raw data are available from the corresponding author upon reasonable request.
