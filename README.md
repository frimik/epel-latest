epel-latest
===========

Convenient link to latest epel release version.

Usage
-----

    rpm -ivh http://warm-scrubland-1864.herokuapp.com/epel-latest/6/x86_64/epel-release
    rpm -qip http://warm-scrubland-1864.herokuapp.com/epel-latest/6/x86_64/fail2ban

Bugs
----
This depends on the repoview html, and in EPEL it is full of broken links for
wrong arch packages: 
[php-redis](http://dl.fedoraproject.org/pub/epel/6/x86_64/repoview/php-redis.html), 
[pdsh](http://dl.fedoraproject.org/pub/epel/6/x86_64/repoview/pdsh.html).
At least with [epel-release](http://dl.fedoraproject.org/pub/epel/6/x86_64/repoview/epel-release.html) you should be safe as it's a *noarch* package.

License
-------
MIT
