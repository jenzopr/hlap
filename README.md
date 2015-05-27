hlap - Hoelpis library of amazing plots
=======================================

### Overview and Objective

This package provides functions to plot data from *-omics* experiments in the R language. The functions work on low level data input (like numerical matrices) and return graphical elements that can be stored as jpg or pdf from R. Together with the functions, we provide [ggplot2](http://ggplot2.org/)-compatible themes that can be used to customize the graphics.

Functions included are:
* Soraya.cormat - creates a correlation heatmap for any numerical matrix.
* Soraya.heatmap - creates a heatmap with two dedrograms for any numerical matrix.

### Installation

**Package dependencies**

* devtools
* ggplot2 (>= 0.9.2)
* RColorBrewer (>= 1.1)
* reshape2 (>= 1.4)
* gtable (>= 0.1.2)
* ggdendro (>= 0.1)

Provide all dependencies, then install in your R session via:
```R
install_github("jenzopr/hlap")
```

### Usage

### Contribution and Contact

**How to contribute?**

Feel free to fork this repository, add your changes and send me a pull request.

**Contributors**

* Jens Preussner (jens.preussner@mpi-bn.mpg.de)
* Soraya Hoelper (soraya.hoelper@mpi-bn.mpg.de)

### License

The package is licensed under the MIT license.
