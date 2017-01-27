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

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin#  curl --user admin:password1 http://172.17.0.33:8080 -v`` <br \> 
`` Rebuilt URL to: http://172.17.0.33:8080/ `` <br \> 
`` Hostname was NOT found in DNS cache``  <br \> 
`` Trying 172.17.0.33...`` <br \> 
``   Connected to 172.17.0.33 (172.17.0.33) port 8080 (#0)`` <br \> 
``   Server auth using Basic with user 'admin' ``<br \> 
`` > GET / HTTP/1.1`` <br \> 
`` > Authorization: Basic YWRtaW46cGFzc3dvcmQx`` <br \> 
`` > User-Agent: curl/7.35.0``<br \> 
`` > Host: 172.17.0.33:8080``<br \> 
`` > Accept: */*``<br \> 
`` >``<br \> 
`` < HTTP/1.1 200 OK ``       

``[ --- etc --- ]`` 


The script start_browser.sh will find the container's IP, and start the Zeppelin in browser (as anonymous user)
