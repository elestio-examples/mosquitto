#set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for software to be ready..."
sleep 30s;

docker-compose exec -T mosquitto mosquitto_passwd -U /mosquitto/data/mosquitto.password_file

docker-compose down;
docker-compose up -d;