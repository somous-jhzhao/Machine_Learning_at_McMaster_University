Text Editors for Python
========================

Two text editors are my favourites, **vim** and **sublime text 3**, both of which have been widely used in programming.
Vim is very powerful, but a little difficult for learn at the beginning. Sublime is smart and easy to use.

#. Vim
   Vim is pre-installed in most linux systems as well as Mac OSX systems. If you want to install vim from
   cmd command lines. You may follow this `tutorial <https://github.com/fwmeng88/Machine_Learning_at_McMaster_University/blob/develop/vim_configure.sh>`_ I have writen.

#. Sublime
   Dowonload Sublime 3 from https://www.sublimetext.com/3 and choose the right package accordingly.
   *Install subl command line tool* (you can skip this setp)
   Mac OSX:

   .. code:: bash

      $ sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/bin/subl

   Linux: modify it accordingly. If it does't work, tyr

   .. code:: bash

      $ echo "export PATH=~/bin:$PATH" >> ~/.profile``

   *Install Package Control*
   Click **View > Show Console** to open the ST3 console and then copy this code into it:

   .. code:: python

    #coding:utf-8

    import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

   You can now install packages by using the keyboard shortcut cmd+shift+P.
   Start typing install until Package Control: Install Package appears.
   Press enter and search for available packages.

   **Install SideBarEnhancements Package**

   Download or clone the contents of this repository to a folder named exactly as the package name into the Packages/ folder of ST.
   Otherwise, refer https://packagecontrol.io/packages/SideBarEnhancements.

   **Install Anaconda**

   Install Anaconda package with the help of Package Control. For a full description of its features, you may consult
   https://packagecontrol.io/packages/Anaconda.
   Don't forget to add ``{"anaconda_linting": false}`` in Anaconda User setting file.

   **Install Python-PEP8 Autoformat**

   Install python-pep8, which is a powerful tool for PEP8 formating of python codes. It's eays to install it with Package Control.

   **Install sublimerge**

   This is a powerful tool for a lot of interesting things. It's the same way of installization. And the website is
   https://packagecontrol.io/packages/Sublimerge%203.

   **Install Sublime-ShellScriptImproved**

   This tools enables better ShellScript (Bash) syntax highlight for Sublime Text >= 3116, which makes
   your shell script more attractive: https://github.com/jfcherng/Sublime-ShellScriptImproved.
   It can be installed by the *packagecontrol*.

   **Other fatures**
   You can make full use of this great article https://realpython.com/blog/python/setting-up-sublime-text-3-for-full-stack-python-development/.

   It's very important to trim the tailing white space. You may configure your user setting file of sublime like:

   .. code:: bash

    #coding:utf-8

      {
      "auto_indent": true,
      "font_size": 14,
      "ignored_packages":
      [
        "Vintage"
      ],
      "rulers":
      [
        79
      ],
      "smart_indent": true,
      "tab_size": 4,
      "trim_automatic_white_space": true,
      "trim_trailing_white_space_on_save": true,
      "use_tab_stops": true,
      "word_wrap": true,
      "wrap_width": 80
      }


Once all the fatures have been configured, your vim should look like:
   .. image:: /source/vim.gif

The Sublime should equipped with powerful features like this:
   .. image:: /source/sublime.gif

