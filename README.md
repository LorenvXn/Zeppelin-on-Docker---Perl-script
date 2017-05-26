# Zeppelin-on-Docker---Perl-script


After running the ``zepl.pl`` script, you will be sent to /opt/zeppelin-0.6.1-bin-all/conf path:

``root@tron-VirtualBox:~/Zeppelin_Docker# perl zepl.pl``  

``root@756548e3f116:/opt/zeppelin-0.6.1-bin-all/conf# pwd`` 



Go to bin folder and (re)Start the Zeppelin daemon:

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin# ./zeppelin-daemon.sh restart`` 

``Zeppelin stop ``                                             [  OK  ] 

``Zeppelin start  ``                                           [  OK  ]

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin#``  



For this example, I have enabled the authentication under conf/shiro.ini for granting access only to admin user. But you can keep it as anonymous.
Check if the web-based notebook is working:

``root@6d1917214148:/opt/zeppelin-0.6.1-bin-all/bin#  curl --user admin:password1 http://172.17.0.33:8080 -v``

`` Rebuilt URL to: http://172.17.0.33:8080/ ``

`` Hostname was NOT found in DNS cache``  

`` Trying 172.17.0.33...``

``   Connected to 172.17.0.33 (172.17.0.33) port 8080 (#0)`` 

``   Server auth using Basic with user 'admin' ``

`` > GET / HTTP/1.1`` 

`` > Authorization: Basic YWRtaW46cGFzc3dvcmQx`` 

`` > User-Agent: curl/7.35.0``

`` > Host: 172.17.0.33:8080``

`` > Accept: */*`

`` >``

`` < HTTP/1.1 200 OK ``       

``[ --- etc --- ]`` 


The script ``start_browser.sh`` will find the container's IP with image name "ledzeppelin:latest", and open the Zeppelin in browser (as anonymous user). 
