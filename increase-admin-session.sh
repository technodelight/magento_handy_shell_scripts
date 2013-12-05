echo Increase admin session lifetime to 86400, ignoring lockout failures
echo "INSERT INTO core_config_data (scope, scope_id, path, value) VALUES" > /tmp/increase-admin-session.sql
echo "('default', 0, 'admin/security/session_cookie_lifetime', 86400)" >> /tmp/increase-admin-session.sql
echo "ON DUPLICATE KEY UPDATE value = 86400;" >> /tmp/increase-admin-session.sql
mysql -uroot -proot magentodb < /tmp/increase-admin-session.sql
rm /tmp/increase-admin-session.sql
