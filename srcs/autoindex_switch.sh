#!/bin/bash

if grep -q "autoindex on;" /etc/nginx/sites-available/wupdegra
then
	sed -i "s/autoindex on;/autoindex off;/g" /etc/nginx/sites-available/wupdegra
	service nginx restart
elif grep -q "autoindex off;" /etc/nginx/sites-available/wupdegra
then
	sed -i "s/autoindex off;/autoindex on;/g" /etc/nginx/sites-available/wupdegra
	service nginx restart
fi