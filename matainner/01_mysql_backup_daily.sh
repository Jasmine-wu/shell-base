
#!/bin/bash
User=root
Passw=changsha123
#Mysqldump=/usr/bin/mysqldump
Mysqldump=mysqldump
Backup_base_dir=Backup
Date=$(date +%F)
Backup_Path=$Backup_base_dir/$Date
DataBase=employees
Containner=mysql

  test -d $Backup_Path || mkdir -p $Backup_Path

  if [ $? -eq 0 ];then

    echo "============ Backup is starting ==========="
    docker exec -it $Containner $Mysqldump -u${User} -p${Passw} -B $DataBase > $Backup_Path/mysql_db.sql
    if [ $? -eq 0 ];then
        echo "============ Backup is end ==========="
    fi
fi


