EasyWinBuilder v0.3
===============
(c) 2013 phelix / blockchained.com - MIT license

Automatically download environment software, all dependencies and build Bitcoin/Namecoin/Altcoin. 

How to use
-----------
Make sure to only use directories without spaces. Do EXACTLY follow the script instructions or the build might fail with strange errors.

To run simply double click __all_easywinbuilder.bat or one of the other control scripts (depending on your configuration). You can also manually start the batch files (in order) as needed.

EasyWinBuilder can run on a mint windows system (e.g. a virtual machine) or a normal system. It might overwrite your MinGW or Qt installation, though. Please note the process takes about half an hour or more and will need about 3GB of hard drive space.

In this repository there are no changes to the Bitcoin code itself though the process makes a handful of small changes. This means it is possible to plug'n'play the easywinbuilder directory into similar Bitcoin/Namecoin/Altcoin versions.

To change dependency versions / paths edit set_vars.bat

Note that the official Windows binaries are cross compiled on Linux.


File Hashes
-----------
The script calculates a hash of the disassembly of the final Qt executable. The idea is to validate binaries by several people, a little similar to the real Bitcoin build process. Currently the disassembly hash is only working for bitcoin-qt.exe whereas namecoind.exe produces different disassembly hashes. If you find out why let me know, also if you know a better way of how to get rid of the binary timestamp.

Problems
--------
Often the source of trouble is difficult to identify as there are so many follow up issues. You can run the scripts from within SciTE or increase your command window buffer size (open command line, right click on the top left icon, properties, layout, windowbuffersize --> 9999, then start the batch file from command line).

If you install MinGW or Qt the wrong way you will have to start over (at least remove all previously compiled files).

Forum thread with more info: https://bitcointalk.org/index.php?topic=252931

ToDo
-----
* Check daemon disassembly hashes (deterministic build)
* Automatic environment install (how to bootstrap?)
* Try to speed up building of OpenSSL and Berkeley DB by only building what is necessary


Credits
-------
Based on build instructions by nitrogenetics (https://bitcointalk.org/index.php?topic=149479.0), Matt Corallo and others.
Thanks to Viriatto and neoranga for feedback on problems with spaces in paths.
