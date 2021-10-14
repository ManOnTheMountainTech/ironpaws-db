#!/bin/sh
BACKUP_DIR='/data/backups/mysql'
SQL_DUMP_COMMAND=`mysqldump --opt --user=root`
xtrabackup --backup --target-dir=$BACKUP_DIR
$SQL_DUMP_COMMAND bryan_mush > $BACKUP_DIR/bryan_mush.sql
#$SQL_DUMP_COMMAND bryan_mush_beta > $BACKUP_DIR/bryan_mush_beta.sql
#$SQL_DUMP_COMMAND bryan_wpbeta > $BACKUP_DIR/bryan_wpbeta.sql
#$SQL_DUMP_COMMAND bryan_wpip > $BACKUP_DIR/bryan_wpip.sql
#$SQL_DUMP_COMMAND bryan_zilla > $BACKUP_DIR/bryan_zilla.sql
$SQL_DUMP_COMMAND wordpress > $BACKUP_DIR/wordpress.sql