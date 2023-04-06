# Velocity Dockerized
Docker images and compose files to easily create a Velocity server network

## Getting Started
### Configuring servers
The default configuration in the `docker-compose.yml` file contains two servers, `server1` and `server2`. You can rename these servers to your liking, as well as create new servers by simply copy-pasting one configuration block for a server.

You can choose a specific Minecraft version by changing the tag of the Docker image for a server.

Make sure to change the mount points as well, so each of the server uses a separate folder for its data.

### Configuring .env
Edit the `.env` file and accept the Mojang EULA by setting the `EULA` variable to `true`.

### First start
Now you need to run the containers once to create config files. You can start them using `docker compose up -d`, then stop them again using `docker compose down`.

### Configuring Velocity
When starting the compose file for the first time, a `velocity.toml` file will be created in the `velocity` folder. You can edit this file to configure the proxy, so you can actually join the Minecraft servers.

Find the section called `[servers]`. Here you can find a list of servers that Velocity can proxy to.

Replace the default servers with your server names and use `yourServerName:25565` for the IP and port. You may need to adjust the `try` setting as well to change which server your players will be sent to by default.

Below this section, there should also be a `[forced-hosts]` section. Here you can configure domain names for your servers if you have any. If you don't, just remove them (or comment them out using `#`s)

### (Optional) Further configuration

The configuration for Velocity be further customized, take a look at the [Velocity documentation](https://docs.papermc.io/velocity/configuration) for more details.

You can also configure your servers as you like, take a look at the [Paper documentation](https://docs.papermc.io/paper/reference/global-configuration) for more details.

### Running the network
With this configuration, you are good to go. Just start the network again using `docker compose up -d` and you should be able to join a server via the proxy.
