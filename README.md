# cython_vagrant_box

Linux/Cython/Numpy Box on Vagrant
 
I got tired of dealing with osx/gcc problems and made this box. Still testing it, but it downloads the main packages I use and automatically loads them into ipython notebook whenever I open a new notebook. IPython config files are in the /vagrant/ shared folder and symlinked to the ones on the box. So, you can edit there. 

Installs: Ubuntu, Numpy, Scipy, Cython, IPython Notebook, etc. See bootstrap.sh for complete list

##To build this box 
###(assuming vagrant is already installed): 

1. Clone repository
2. Update Vagrant File: 
  * Change shared folder
  * Change ports if needed
3. Change bootstrap.sh to add/remove packages as desired
4. cd into repository folder
5. $vagrant up

It will take a few mintes. Building Scipy with pip is pretty slow, but apt-get gets an older version that doesn't have the Inverse Wishart Distribution. 

##To use this box: 

1. $vagrant ssh
2. $cd "name of shared folder"
3. $ipython notebook

Access IPython Notebook on your browser at 0.0.0.0:7777

$vagrant provision will rerun the bootstrap.sh file which will check for updates of all packages.

 

