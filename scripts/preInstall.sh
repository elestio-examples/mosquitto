#set env vars
set -o allexport; source .env; set +o allexport;



mkdir -p ./mosquitto/{config,data,log}
chown -R 1000:1000 ./mosquitto

cat << EOT >> ./mosquitto/data/mosquitto.password_file

admin:${ADMIN_PASSWORD}
EOT

chown 0700 ./mosquitto/data/mosquitto.password_file