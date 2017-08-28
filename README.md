## Usage

### docker run

	docker run -d -v ~/.hue2mqtt:/root/.hue2mqtt dersimn/hue2mqtt.js -b BRIDGE_IP -u mqtt://MQTT_IP -p 1 -d

hm2mqtt.js stores persistence in `/root/.hue2mqtt`, currently only the username is stored there (otherwise you would have to press the link button, everytime you recreate the Container).

Options `-p 1 -d` are optional, but I prefer using these. Run `docker run --rm dersimn/hue2mqtt.js --help` to list all options.

#### docker-compose service

	hue2mqtt.js:
		image: dersimn/hue2mqtt.js
		volumes:
		  - ~/.hue2mqtt:/root/.hue2mqtt
		command: "-b BRIDGE_IP -u mqtt://MQTT_IP -p 1 -d"


## Debug

### Show debugging output

For some reason `Ctrl-C` is not working, workaround with named container:

	docker run --rm -it --name=hue2mqtt.js dersimn/hue2mqtt.js -b BRIDGE_IP -u mqtt://MQTT_IP -p 1 -d -v debug
	Ctrl-P Ctrl-Q
	docker stop hue2mqtt.js

### Manually build
	
	docker build -t username/hue2mqtt.js .
