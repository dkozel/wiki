[[Barkeep|http://getbarkeep.org/]] is a code review tool which keeps with the theme of lightweight, attractive, single purpose tools.

### Notes
* Runs using the [[unicorn|http://unicorn.bogomips.org/]] web server by default with a proxy through nginx

### Problems
* Doesn't support running in a subdirectory
* No apache configuration

**March 4, 2014**  
I've tried using a very basic VirtualHost with ProxyPass to direct traffic, but so far running through Apache doesn't work at all.

**March 18, 2014**
Altering the Apache configuration to enable ProxyRequests and adding a trailing / to the ProxyPass statments seems to have cleared things up. The Upstart files still need to be altered to enable and disable the apache site rather than Nginx.