Command Terminal
****************

**Set up a Terminal for Windows 10**

#. **Install Ubuntu**
  
   Follow the instruction of `this tutorial  <http://www.windowscentral.com/how-install-bash-shell-command-line-windows-10>`_
   and `another Chinese version tutorial <https://jingyan.baidu.com/article/90bc8fc85ec19cf652640c5f.html.>`_. 
   Now please restart your laptop.

#. **Install Cmder**
  
   Cmder is a more user friendly command line terminal than cmd, which gave me a shock when I used it for the first time.
   Unzip the files to *C:\\Program Files\\Cmder*. 
   
   Add the path where the *cmd.exe* lies in to the system environment, which enables you to use *Cmder* with the
   *Win+r* shortcut followed by *cmder*. You may follow the this `example <https://jingyan.baidu.com/article/8ebacdf02d3c2949f65cd5d0.html>`_.
   Open the cmd terminal as adminitrator, type in the following the command:
  
   ``cmder.exe /REGISTER ALL``

   Now you can srart your cmder with *Win+Alt+P*. Find the setting opition at the right bottom of cmder terminal and click
   the *Startup*, choose *Command line* and set it as ``bash -cur_console:p``. Enter the bash shell with the following way: click
   the green icon at the right bottom, choose **3:\{bash\}** and **4:\{bash\}**, open the setting window, **Startup\/tasks**, set it as
   **\{bash::bash\}** and  set taks paramaters as ``/icon "%CMDER_ROOT%\icons\cmder.ico"``, confirm and exit. Now you can use it. Enjoy!
