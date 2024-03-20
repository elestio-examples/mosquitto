# Mosquitto Agent CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/mosquitto"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Mosquitto with CI/CD on Elestio

<img src="mosquitto.png" style='width: 100%;, max-width:300px;'/>
<br/>
<br/>

# When deploying ...

You can open Mosquitto UI here:

    URL: https://[CI_CD_DOMAIN]
    Login: admin
    password: [ADMIN_PASSWORD]

# Testing the Broker

You can conveniently test your MQTT broker using an online tool. Follow these steps:

1. Visit <a href="https://testclient-cloud.mqtt.cool/">MQTT Test Client</a>

2. Use the following credentials:

   Protocol: tcp
   Host: [CI_CD_DOMAIN]
   Port: 1883
