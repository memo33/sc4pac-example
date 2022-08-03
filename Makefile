# requires `conda install conda-build`
build:
	cd metadata && conda-build memo.*-dummy.* && conda-build memo.*
