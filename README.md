We have a high-availability setup across two servers, each running its own Docker Compose deployment. Each server hosts a complete stack including Keepalived, Kong, Nginx, and three Python containers.

Keepalived ensures the high availability of the virtual IP (VIP) and directs traffic to one of the Kong instances running on either server A or server B.
Kong acts as the API gateway, receiving traffic from the VIP and forwarding it to one of the Nginx instances.
Nginx serves as the web server, balancing the load across the three Python containers on its server.
Python Containers handle the application logic and respond to requests forwarded by Nginx.
Here's how the traffic flow works:

A client sends a request to the VIP managed by Keepalived.
Keepalived directs the request to one of the Kong instances (either on server A or server B).
Kong processes the request and forwards it to one of the Nginx instances (either on server A or server B).
Nginx balances the load and forwards the request to one of the three Python containers on its server.
