#!/usr/local/bin/bash

# cleanup old generated files
if [ -d "public/" ]; then
	rm -r public/
fi

hugo # generate anew

# copy over nginx conf
scp ./status.mataroa.blog.conf root@evey.sirodoht.com:/etc/nginx/sites-available/

# remove old and copy over new html files
ssh root@evey.sirodoht.com rm -r /var/www/status.mataroa.blog/
ssh root@evey.sirodoht.com mkdir -p /var/www/status.mataroa.blog/html
rsync -rsP ./public/ root@evey.sirodoht.com:/var/www/status.mataroa.blog/html

# restart nginx
ssh root@evey.sirodoht.com 'nginx -t'
ssh root@evey.sirodoht.com 'systemctl reload nginx'
