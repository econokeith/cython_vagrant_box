# cython_vagrant_box

Linux/Cython/Numpy Box on Vagrant
 
I got tired of dealing with osx/gcc problems and made this box. Still testing it, but it downloads the main packages I use and automatically loads them into ipython notebook whenever I open a new a new notebook. ipython config files are in /vagrant/ folder and symlinked to the ones on the box. So, you can edit there. 

Installs: Ubantu, Numpy, Scipy, Cython, IPython Notebook, etc. See bootstrap.sh for complete list

#To build this box: 

1. clone repository
2. Update Vagrant File: 
  * change shared folder
  * change ports if needed
3. change bootstrap.sh to add/remove packages
4. cd into repository folder
5. $vagrant up

It will takes a while especially building Scipy since the apt-get version is old and doesn't have an Inverse Wishart Distribution in it

#To use this box: 

1. $vagrant ssh
2. $cd "name of shared folder"
3. $ipython notebook

$vagrant provision will rerun the bootstrap.sh file which will check for updates on all files. 

