# oocarray_benchmark
Benchmark of out-of-core multi-dimensional arrays

# Pre-requisites
- Bash: GNU bash, version 4.2.46(1)-release (x86_64-redhat-linux-gnu)
- Snakemake: 6.0.5
- Singularity: 3.5.3
- matter (R/Bioconductor): 1.16.1
- rTensor (R/CRAN): 1.4.1
- DelayedArray (R/Bioconductor): 0.16.3
- HDF5Array (R/Bioconductor): 1.18.1
- TileDBArray (R/Bioconductor): 1.1.3
- HOXOMInc/DelayedTensor (GitHub): commit ac9ee6d4f33b284c7615160cf85030dec99cec8a

# Summary
## Memory usage
![](https://raw.githubusercontent.com/rikenbit/oocarray_benchmark/main/plot/benchmark_memory.png)

## Calculation time
![](https://raw.githubusercontent.com/rikenbit/oocarray_benchmark/main/plot/benchmark_time.png)

# How to reproduce this workflow

```bash
snakemake -j 4 --use-singularity
```

# License
Copyright (c) 2021 Koki Tsuyuzaki and RIKEN Bioinformatics Research Unit Released under the [Artistic License 2.0](http://www.perlfoundation.org/artistic_license_2_0).

# Authors
- Koki Tsuyuzaki
- Itoshi Nikaido

# Reference
- **Bioconductor**
  - rhdf5: https://bioconductor.org/packages/release/bioc/html/rhdf5.html
  - DelayedArray: https://bioconductor.org/packages/release/bioc/html/DelayedArray.html
  - HDF5Array: https://bioconductor.org/packages/release/bioc/html/HDF5Array.html
  - TileDBArray: https://bioconductor.org/packages/release/bioc/html/TileDBArray.html
  - DelayedDataFrame: https://bioc.ism.ac.jp/packages/devel/bioc/vignettes/DelayedDataFrame/inst/doc/DelayedDataFrame.html
  - matter（ALTREP？）: https://bioconductor.org/packages/release/bioc/html/matter.html
  - beachmat: https://bioconductor.org/packages/release/bioc/html/beachmat.html
  - LoomExperiment: https://www.bioconductor.org/packages/release/bioc/html/LoomExperiment.html
  - ZarrExperiment: https://github.com/Bioconductor/ZarrExperiment

- **CRAN**
  - bigmemory: https://cran.r-project.org/web/packages/bigmemory/index.html
  - ff: https://cran.r-project.org/web/packages/ff/index.html
  - disk.frame: https://cran.r-project.org/web/packages/disk.frame/index.html
  - fst: https://cran.r-project.org/web/packages/fst/index.html
  - tiledb: https://cran.r-project.org/web/packages/tiledb/index.html
  - slam: https://cran.r-project.org/web/packages/slam/index.html
  - tensorr: https://cran.r-project.org/web/packages/tensorr/index.html
  - readr: https://cran.r-project.org/web/packages/readr/index.html
  - bigreadr: https://cran.r-project.org/web/packages/bigreadr/index.html
  - vroom（ALTREP？）: https://cran.r-project.org/web/packages/vroom/index.html
  - data.table: https://cran.r-project.org/web/packages/data.table/index.html
  - Rdsm: https://cran.r-project.org/web/packages/Rdsm/index.html
  - h5: https://mran.microsoft.com/snapshot/2017-02-04/web/packages/h5/vignettes/h5-Intro.html
  - ncdf4: https://cran.r-project.org/web/packages/ncdf4/index.html
  - hdf5r: https://cran.rstudio.com/web/packages/hdf5r/index.html

- **GitHub**
  - LoomR: https://github.com/mojaveazure/loomR
  - seurat-disk: https://github.com/mojaveazure/seurat-disk
  - oocPCA: https://github.com/KlugerLab/oocPCA
  - fstArray: https://github.com/PeteHaitch/fstArray

- **Other Language**
  - TileDB（C/C++/Python/R/Java/GO）: https://docs.tiledb.com/main/solutions/tiledb-embedded/installation/building-from-source
  - h5py（Python）: http://www.h5py.org
  - SFrame（Python）: https://pypi.org/project/SFrame/
  - bcolz（Python）: https://pypi.org/project/bcolz/
  - loompy（Python）: https://github.com/linnarsson-lab/loompy
  - Dask（Python）: https://dask.org
  - Vaex（Python）: https://vaex.io/docs/index.html#
  - Zarr（Python）: https://zarr.readthedocs.io/en/stable/
  - zarr-R: https://github.com/gdkrmr/zarr-R
  - HDF5.jl（Julia）: https://github.com/JuliaIO/HDF5.jl
  - JuliaDB（Julia）: https://juliadb.org
  - GraphChi（C++）: https://github.com/GraphChi/graphchi-cpp

- **Benchmark**
  - https://y-mattu.hatenablog.com/entry/2019/05/17/191323
  - https://www.bioconductor.org/help/course-materials/2020/BiocDevelForum/17-ALTREP2.pdf
  - https://svn.r-project.org/R/branches/ALTREP/ALTREP.html
  - https://towardsdatascience.com/out-of-core-genomics-8aa5ef487d1e
  - https://xlearn-doc.readthedocs.io/en/latest/large/#out-of-core-learning
  - https://docs.tiledb.com/main/basic-concepts/data-model
  - https://www.youtube.com/watch?v=S6RvK8MuVEY
  - https://www.youtube.com/watch?v=wQJbSh-NHeg&t=1819s