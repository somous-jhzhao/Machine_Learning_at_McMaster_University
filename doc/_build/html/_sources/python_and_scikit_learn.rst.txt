Python, Its Tools and Libraries
================================

In this part, we will first install python 3.6 and some libraries with the help of pip.
Then we will show how to work with one of the best tools for python learning and teaching, ipython.
However, if you don't like the command line way of programming, the easiest way is to install Anaconda,
https://www.continuum.io/downloads.

Installization
--------------

#. **Install Python**

   Although Python 2 has been widely used, we recommand to use Python 3 instead. If you have some projects
   written in python 2, there are some optinional ways for version control of python.

   Go to https://www.python.org/downloads/, and download the latest version of python.

#. **Install Pip**

   It is recommended to install pip 3 in consistence with python 3.6. A detailed instruction
   can be found: https://pip.pypa.io/en/stable/installing/. One converntial way install it is with this script:
   https://bootstrap.pypa.io/get-pip.py.

   ``python get-pip.py``

   We can use pip to install, upgrade, uninstall python packages. Here are some examples.

   .. code-block:: python
      :name: pip examples

      pip search numpy
      pip install numpy
      pip install numpy -U #update python libraries
      pip install numpy --upgrade #update python libraries way 2


#. **Install machine learning python libraries**
   The often used python libraries are *numpy*, *pandas*, *matplotlib*, *pybrain*, *statsmodels*,
   and *scikit-learn*. A good online tutorial is worth reading:
   http://machinelearningmastery.com/setup-python-environment-machine-learning-deep-learning-anaconda/.
   Then we can make use of *pip* to install python libraries.
   The official website of scikit-learn is a gold ore: http://scikit-learn.org/stable/index.html. Install scikit by pip.
   A good Scipy leture notes can be found here: http://www.scipy-lectures.org/.

#. **Install Ipython**
   IPython provides a rich architecture for interactive computing with:
   a powerful interactive shell and a kernel for Jupyter. It's quite easy 
   to install Ipython by *pip*:

   .. code-block:: bash
     
      $ pip3 install ipython

#. **Install Jupyter**
   Anaconda conveniently installs Python, the Jupyter Notebook,
   and other commonly used packages for scientific computing and
   data science. But if Anaconda is not your choice, you can install
   Jupyter by *pip*.

   .. code-block:: bash
 
      $ pip3 install --upgrade pip
      $ pip3 install jupyter

   Once you have *Jupyter* installed, you can run notebook:

   .. code-block:: bash

      $ jupyter-notebook-3.6 test.ipynb
      #you can also do it in this way
      $ jupyter-3.6 notebook test.ipynb

   An interesting book might help: https://ipython.org/books.html.  

**Version Control of Python**
------------------------------
Sometimes, you have to work with both python 2 and python 3 and version control will become of a big concern.
Otherwise, you will come accorss some unexpcted errors.

**For Mac Users**

For now, maybe *MacPorts* is a good choice for people working with different python versions.
The prerequisites to install *MacPorts* is that you have `Xcode <https://developer.apple.com/xcode/>`_
installed. Don't forget to open *Xcode* to accept the licence.
Then go to the offical website of MacPorts: https://www.macports.org/install.php and now you can install it
by yourself. Now you can use *Macports* to do the version control.

.. code-block:: bash

   $ port search python3*
   $ sudo port install python36 @3.6.0
   $ port search python2*
   $ sudo port install python27 @2.7.13
   $ port installed | grep python
   $ sudo port select --set python python36 @3.6.0


**For Linux Users**

This is a more generalized way for python version control, where we will use
`pyenv <https://github.com/pyenv/pyenv>`_. Here is how to install *pyenv*:

.. code-block:: bash

   #install
   $ curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
   #update
   $ pyenv update
   #check if the following have has been added in ~/.bashrc
   #otherwise, add them
   $ export PATH="~/.pyenv/bin:$PATH"
   $ eval "$(pyenv init -)"
   $ eval "$(pyenv virtualenv-init -)"

Once you have pyenv installed, you can use it to install any specific version
of python.

.. code-block:: bash

   #this part is based on http://akbaribrahim.com/managing-multiple-python-versions-with-pyenv/
   #search step need to be added
   $ pyenv install 3.6.0
   $ pyenv install 2.7.13
   #check th current version
   $ pyenv version
   #set specific version globally
   $ pyenv global 3.6.0
   #if you want to set a python version for the current shell session
   $ pyenv shell 3.6.0

For more information, you may refer to the *pyenv*
https://github.com/pyenv/pyenv#installation.

Contragulations
----------------
**You are all set for python!!!**
