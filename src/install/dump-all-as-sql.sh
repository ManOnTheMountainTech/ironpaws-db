#!/bin/sh
BACKUP_DIR='/data/backups/mysql'
rm -r --interactive=never $BACKUP_DIR
mkdir $BACKUP_DIR
SQL_DUMP_COMMAND='mysqldump --opt --user=root'
xtrabackup --backup --target-dir=$BACKUP_DIR
eval $SQL_DUMP_COMMAND bryan_mush > $BACKUP_DIR/bryan_mush.sql
eval $SQL_DUMP_COMMAND bryan_mush_beta > $BACKUP_DIR/bryan_mush_beta.sql
eval $SQL_DUMP_COMMAND bryan_wp_mb > $BACKUP_DIR/bryan_wp_mb.sql
eval $SQL_DUMP_COMMAND bryan_wp_mush > $BACKUP_DIR/bryan_wp_mush.sql
eval $SQL_DUMP_COMMAND bryan_zilla > $BACKUP_DIR/bryan_zilla.sql
eval $SQL_DUMP_COMMAND mysql > $BACKUP_DIR/mysql.sql
ls -la $BACKUP_DIR/*.sql
