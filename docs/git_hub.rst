Git-hub
========
Download the latest version Git from https://git-scm.com/downloads according to your operating system.

For windows 10 users, it's better for you to install them with *Cmder*.
#. Add the sudo password which is essential for installing packages.``sudo passwd``

#. Install git.

   .. code-block:: bash

      $ sudo apt-get install git

#. Configure the git-hub account.

   .. code-block:: bash

      $ git config --global uers.name "your_user_name"
      $ git config --global user.email "your_email_address"

   If you have a two factor authentation, you need a
   **Personal access token** to access the private repos.

   **Note**

   For Fedora and Centos users, try

   .. code-block:: bash

      $ sudo yum install git
      where the  administrative password is required.
      
   If there a error message, try to add the admin password by

   .. code-block:: bash

      $ sudo passwd root``

Go to https://education.github.com for more trainings.
