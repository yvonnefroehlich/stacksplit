
# StackSplit                            [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5802051.svg)](https://doi.org/10.5281/zenodo.5802051) [![View michaelgrund/stacksplit on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://de.mathworks.com/matlabcentral/fileexchange/62402-michaelgrund-stacksplit)

### A plugin for multi-event shear wave splitting analyses in SplitLab

StackSplit is a plugin for the MATLAB toolbox [SplitLab](http://splitting.gm.univ-montp2.fr/) ([**_Wüstefeld et al., 2008_**](https://www.sciencedirect.com/science/article/pii/S0098300407001859)) which allows applying multi-event techniques for shear wave splitting measurements (SWS) directly within the main program.

For details regarding installation and usage, see the [UserGuide](https://github.com/michaelgrund/stacksplit/blob/main/StackSplit/Doc/StackSplit_userguide.md).

Citation
--------

If you make use of StackSplit in your work, please acknowledge my paper in which the program is described:

- **_Grund, M. (2017)_**, StackSplit - a plugin for multi-event shear wave splitting analyses in SplitLab, *Computers & Geosciences*, 105, 43-50, https://doi.org/10.1016/j.cageo.2017.04.015.

Optionally, you can also cite the [Zenodo DOI](https://zenodo.org/record/5802051#) given above, which refers to the latest version of this GitHub repository.

Which stacking methods are available?
-------------------------------------

StackSplit grants easy access to four stacking schemes with which single SWS measurements made with SplitLab can be processed:

1. **WS**: stacking of error surfaces, normalized on the minimum/maximum (depending on input) of each single surface ([**_Wolfe & Silver, 1998_**](https://doi.org/10.1029/97JB02023))

2. **RH**: modified WS method with weight depending on the SNR of each measurement and normalization regarding the available backazimuth directions ([**_Restivo & Helffrich, 1999_**](https://doi.org/10.1046/j.1365-246x.1999.00845.x))

3. **no weight**: stacking of error surfaces without weighting following the PhD thesis of [**_Wüstefeld (2007)_**](http://splitting.gm.univ-montp2.fr/)

4. **SIMW**: simultaneous inversion of multiple waveforms in the time domain ([**_Roy et al., 2017_**](https://doi.org/10.1093/gji/ggw470))

![fig4github](https://user-images.githubusercontent.com/23025878/56716351-6d3d2a80-673a-11e9-8b34-2191c119d780.png)

Compatibility with SplitLab and MATLAB versions
-----------------------------------------------

|StackSplit|SplitLab|MATLAB|
|---|---|---|
|dev ([main branch](https://github.com/michaelgrund/stacksplit))|[1.2.1](https://robporritt.wordpress.com/software/), [1.0.5](http://splitting.gm.univ-montp2.fr/) (not tested)|>= [2020a](https://mathworks.com/help/releases/R2020a/index.html) (< 2020a might work, but not tested yet)|
|[v3.0](https://github.com/michaelgrund/stacksplit/releases/tag/v3.0) (latest release)|[1.2.1](https://robporritt.wordpress.com/software/), [1.0.5](http://splitting.gm.univ-montp2.fr/) (not tested)|>= [2020a](https://mathworks.com/help/releases/R2020a/index.html) (< 2020a might work, but not tested yet)|
|[v2.0](https://github.com/michaelgrund/stacksplit/releases/tag/v2.0)|[1.2.1](https://robporritt.wordpress.com/software/), [1.0.5](http://splitting.gm.univ-montp2.fr/)|>= [2014b](https://mathworks.com/company/newsroom/mathworks-introduces-new-features-in-matlab-and-simulink.html) (tested up to and including [2018b](https://mathworks.com/help/releases/R2018b/index.html))|
|[v1.0](https://github.com/michaelgrund/stacksplit/releases/tag/v1.0)|[1.2.1](https://robporritt.wordpress.com/software/), [1.0.5](http://splitting.gm.univ-montp2.fr/)|<= [2014a](https://mathworks.com/company/newsroom/mathworks-announces-release-2014a-of-the-matlab-and-simulink-product-families.html)|

For details regarding the different StackSplit versions, see the [Changelog](https://github.com/michaelgrund/stacksplit/blob/main/changelog.md).

Contributing
------------

Did you find a bug or have suggestions for improvements? Simply open a new [issue](https://github.com/michaelgrund/stacksplit/issues) or [pull request](https://github.com/michaelgrund/stacksplit/pulls) here on GitHub.

Use Cases
----------

Peer-reviewed work in which StackSplit was used:

**2024**

- **_Fröhlich, Y., Grund, M. & Ritter, J. R. R. (2024)_**,
  Lateral and vertical variations of seismic anisotropy in the lithosphere-asthenosphere system underneath Central Europe from long-term splitting measurements,
  in revision for Geophysical Journal International.

**2022**

- **_Cheng, B., Liu, Y., Dong, Y., Zhao, D., Yang, Z. & Zhang, G. (2022)_**,
  Northeastward expansion of the Tibetan Plateau: Seismic anisotropy evidence from shear-wave splitting measurements,
  Journal of Asian Earth Sciences, 240, https://doi.org/10.1016/j.jseaes.2022.105430.
- **_Fröhlich, Y., Grund, M. & Ritter, J. R. R. (2022)_**,
  On the effects of wrongly aligned seismogram components for shear wave splitting analysis,
  Annals of Geophysics, 66(3-4), https://doi.org/10.4401/ag-8781.
- **_Gao, Y., Chen, L., Talebian, M., Wu, Z., Wang, X., Lan, H., Ai, Y., Jiang, M., Hou, G., Mahdi Khatib, M., Xiao, W. & Zhu, R. (2022)_**,
  Nature and structural heterogeneities of the lithosphere control the continental deformation in the northeastern and eastern Iranian plateau as revealed by shear-wave splitting observations,
  Earth and Planetary Science Letters, 578, https://doi.org/10.1016/j.epsl.2021.117284.
- **_Link, F., Reiss, M. C. & Rümpker, G. (2022)_**,
  An automatized XKS-splitting procedure for large data sets: Extension package for SplitRacer and application to the USArray,
  Computers & Geosciences, 158, https://doi.org/10.1016/j.cageo.2021.104961.
- **_Ritter, J. R. R., Fröhlich, Y., Sanz Alonso, Y. & Grund, M. (2022)_**,
  Short-scale laterally varying SK(K)S shear wave splitting at BFO, Germany — implications for the determination of anisotropic structures,
  Journal of Seismology, 26, 1137–1156, https://doi.org/10.1007/s10950-022-10112-w.

**2021**

- **_Andriampenomanana, F., Nyblade, A., Durrheim, R., Tugume, F. & Nyago, J. (2021)_**,
  Shear wave splitting measurements in northeastern Uganda and southeastern Tanzania: corroborating evidence for sublithospheric mantle flow beneath East Africa,
  Geophysical Journal International, 226(3), 1696–1704, https://doi.org/10.1093/gji/ggab167.
- **_Creasy, N., Pisconti, A., Long, M.  D., & Thomas, C. (2021)_**,
  Modeling of seismic anisotropy observations reveals plausible lowermost mantle flow directions beneath Siberia,
  Geochemistry, Geophysics, Geosystems, 22, https://doi.org/10.1029/2021GC009924.

**2020**

<!---
Already included by Fröhlich et al. (2024), in German
- **_Fröhlich, Y. (2020)_**,
  Shear-wave splitting of SK(K)S-phases and laterally varying anisotropy in the Upper Rhine Graben area,
  Master thesis, Karlsruhe Institute of Technology (KIT), https://doi.org/10.5445/IR/1000165525.
-->
- **_Grund, M. & Ritter, J. R. R. (2020)_**,
  Shear-wave splitting beneath Fennoscandia — evidence for dipping structures and laterally varying multilayer anisotropy,
  Geophysical Journal International, 223(3), 1525-1547, https://doi.org/10.1093/gji/ggaa388.
- **_Spingos, I., Kaviris, G., Millas, C., Papadimitriou, P. & Voulgaris, N. (2020)_**,
  Pytheas: An open-source software solution for local shear-wave splitting studies,
  Computers & Geosciences, 134, https://doi.org/10.1016/j.cageo.2019.104346.

**2019**

- **_Gao, Y., Chen, L., Wang, X. & Ai, Y. (2019)_**,
  Complex lithospheric deformation in eastern and northeastern Tibet From shear wave splitting observations and its geodynamic implications,
  Journal of Geophysical Research: Solid Earth, 124, 10331–10346. https://doi.org/10.1029/2018JB017081.
<!---
Already included by Grund (2019) and Grund & Ritter (2020)
- **_Grund, M. (2019)_**,
  Exploring geodynamics at different depths with shear wave splitting,
  PhD thesis, Karlsruhe Institute of Technology (KIT), https://doi.org/10.5445/IR/1000091425.
-->
- **_Grund, M. & Ritter J. R. R. (2019)_**,
  Widespread seismic anisotropy in Earth's lowermost mantle beneath the Atlantic and Siberia,
  Geology, 47(2), 123–126. https://doi.org/10.1130/G45514.1.
- **_Ju, C., Zhao, J., Huang, N., Xu, Q. & Liu, H. (2019)_**,
  Seismic anisotropy of the crust and upper mantle beneath western Tibet revealed by shear wave splitting measurements,
  Geophysical Journal International, 216(1), 535–544, https://doi.org/10.1093/gji/ggy448.

<!---
**2017**

Already mentioned as citization section
- **_Grund, M. (2017)_**,
  StackSplit - a plugin for multi-event shear wave splitting analyses in SplitLab,
  Computers & Geosciences, 105, 43-50, https://doi.org/10.1016/j.cageo.2017.04.015.
-->

References
----------

- **_Restivo, A. & Helffrich, G. (1999)_**, Teleseismic shear wave splitting measurements in noisy environments, Geophysical Journal International 137, 821-830, https://doi.org/10.1046/j.1365-246x.1999.00845.x.
- **_Roy, C., Winter, A., Ritter, J. R. R., Schweitzer, J. (2017)_**, On the improvement of SKS splitting measurements by the simultaneous inversion of multiple waveforms (SIMW), Geophysical Journal International, 208, 1508–1523, https://doi.org/10.1093/gji/ggw470.
- **_Wolfe, C. J. & Silver, P. G. (1998)_**, Seismic anisotropy of oceanic upper mantle: Shear wave splitting methodologies and observations, Journal of Geophysical Research 103(B1), 749-771, https://doi.org/10.1029/97JB02023.
- **_Wüstefeld, A. (2007)_**, Methods and applications of shear wave splitting: The East European Craton. Ph.D. thesis, Univ. de Montpellier, France, http://splitting.gm.univ-montp2.fr/.
- **_Wüstefeld, A., Bokelmann, G., Zaroli, C., Barruol, G. (2008)_**, SplitLab: A shear-wave splitting environment in Matlab, Computers & Geosciences 34, 515–528, https://doi.org/10.1016/j.cageo.2007.08.002.

Related topics
--------------

- Most recent SplitLab version (not compatible with StackSplit yet): https://github.com/IPGP/splitlab

- Shear wave splitting analysis in Python (based on SplitLab): https://github.com/paudetseis/SplitPy

- Shear wave splitting analysis in Julia: https://github.com/anowacki/SeisSplit.jl