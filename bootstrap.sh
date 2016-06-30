sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-dev
sudo apt-get install -y python-pip
sudo apt-get install -y gfortran libatlas-base-dev
sudo apt-get install -y python-numpy python-matplotlib python-pandas
sudo apt-get install -y python-sympy python-nose
sudo pip install --upgrade ipython[all]
sudo pip install -U Scipy
sudo apt-get -y install python-sklearn
sudo apt-get -y install git
sudo pip install -U Cython
sudo pip install -U line_profiler
sudo pip install -U seaborn

cp -s --remove-destination /vagrant/ipython_config.py /home/vagrant/.ipython/profile_default/
cp -s --remove-destination /vagrant/jupyter_notebook_config.py /home/vagrant/.jupyter/