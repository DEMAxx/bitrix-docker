#!/bin/sh
#
if [[ -f /var/www/htdocs/bitrix/.settings.php ]];
then
    if [[ ! -f /var/www/htdocs/install.config && ! -f /var/www/htdocs/license.php && ! -f /var/www/htdocs/readme.php ]];
    then
        su - bitrix -c 'php -f /var/www/htdocs/bitrix/modules/main/tools/cron_events.php; > /dev/null 2>&1'
    fi
fi
#
