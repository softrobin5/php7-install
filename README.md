# php7-install

# Configure Nginx and PHP 7
```
$ sudo vim /etc/nginx/sites-enabled/default
```
Modify or append as follows:
```
#Pass all .php files onto a php-fpm/php-fcgi server.
location ~ [^/]\.php(/|$) {
        fastcgi_split_path_info ^(.+?\.php)(/.*)$;
        if (!-f $document_root$fastcgi_script_name) {
                return 404;
        }
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_pass unix:/run/php/php7.0-fpm.sock;
        fastcgi_index index.php;
        include fastcgi_params;
}
```
Save and close the file. Reload the nginx server:
```
$ sudo service nginx reload
```

### Test new PHP 7 installation
Create a file called test.php in /var/www/html/ directory:

```
<?php
        phpinfo();
?>
```
Save and close the file. Run it as follows:

```
http://your-domain/test.php
```
