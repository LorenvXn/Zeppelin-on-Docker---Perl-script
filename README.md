# Zeppelin-on-Docker---Perl-script


After running the script, you will be promted to /opt/zeppelin-0.6.1-bin-all/conf:

``root@tron-VirtualBox:~/Zeppelin_Docker# perl zepl.pl`` <br \>
``root@756548e3f116:/opt/zeppelin-0.6.1-bin-all/conf# pwd`` <br \>


File conf/shiro.ini has been modified  for granting access only to admin user.

Go to bin folder and (re)Start the Zeppelin daemon:

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin# ./zeppelin-daemon.sh restart``  <br \>
``Zeppelin stop ``                                             [  OK  ]  <br \>
``Zeppelin start  ``                                           [  OK  ] <br \>
``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin#``  <br \>

Check if the web-based notebook is working:

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin# curl http://admin:password1@172.17.0.1:8080``  <br \>
``<!doctype html><!--`` <br \>
``Licensed under the Apache License, Version 2.0 (the "License");`` <br \>
``you may not use this file except in compliance with the License.``  <br \>
``You may obtain a copy of the License at <br \>``


``[ --- snip --- ]`` 
