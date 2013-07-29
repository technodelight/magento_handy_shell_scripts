echo Increase admin session lifetime to 86400, ignoring lockout failures
echo "INSERT INTO core_config_data (scope, scope_id, path, value) VALUES" > increase-admin-session.sql
echo "('default', 0, 'admin/security/lockout_failures', NULL)," >> increase-admin-session.sql
echo "('default', 0, 'admin/security/session_cookie_lifetime', 86400);" >> increase-admin-session.sql
mysql -uroot -proot magentodb < increase-admin-session.sql
rm increase-admin-session.sql
