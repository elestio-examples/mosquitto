# Mosquitto Agent CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/mosquitto"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Mosquitto with CI/CD on Elestio

<img src="mosquitto.png" />
<br/>
<br/>

# When deploying ...

You can open Mosquitto UI here:

    URL: https://[CI_CD_DOMAIN]
    Login: admin
    password: [ADMIN_PASSWORD]

# Testing the Broker

You can conveniently test your MQTT broker using an online tool. Follow these steps:

1.  Visit <a target="_blank" href="https://testclient-cloud.mqtt.cool/">MQTT Test Client</a>

2.  Use the following credentials:

        Protocol: tcp
        Host: [CI_CD_DOMAIN]
        Port: 1883
        Username:admin
        Password:[ADMIN_PASSWORD]

# Subscription and Publication

Instructions are provided below for subscribing to and publishing messages on a specific topic using your project terminal.

## Subscription

To subscribe to the topic `test/topic` and receive messages, follow these steps:

1.  Navigate to the `Elestio dashboard` and access your `project`.
2.  Click on `Terminal`.
3.  Enter the following command in your project terminal:

          docker-compose exec -T mosquitto mosquitto_sub -t 'test/topic' -v -u admin -P [ADMIN_PASSWORD]

Once subscribed, you will start receiving publications on this topic.

## Publication

To publish a message on the topic `test/topic`, execute the following command in your project terminal:

    docker-compose exec -T mosquitto mosquitto_pub -m 'hello world' -v -u admin -P [ADMIN_PASSWORD]

Your publication will appear for subscribers of this topic.

# Adding users

To add a new user, follow these steps:

1.  Navigate to the `Elestio dashboard` and access your `project`.
2.  Click on `Terminal`.
3.  Enter the following command in your project terminal:

          docker-compose exec -T mosquitto mosquitto_passwd -b /mosquitto/data/mosquitto.password_file USER PASSWORD
          docker-compose down
          docker-compose up -d

Your new user will be able to subscribe/publish.
