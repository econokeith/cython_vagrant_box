sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-dev python-nose
sudo apt-get install -y python-pip
sudo apt-get install -y gfortran libatlas-base-dev liblaplack-dev libblas-dev gcc
sudo apt-get install -y python-numpy python-matplotlib python-pandas
sudo pip install -U Cython
sudo pip install --upgrade ipython[all]
sudo pip install -U Scipy
sudo apt-get install -y python-sympy 
sudo apt-get -y install python-sklearn
sudo apt-get -y install git

sudo pip install -U line_profiler
sudo pip install -U seaborn
sudo pip install -U jupyter

ipython profile create

cp -s --remove-destination /vagrant/ipython_config.py /home/vagrant/.ipython/profile_default/
cp -s --remove-destination /vagrant/jupyter_notebook_config.py /home/vagrant/.jupyter/