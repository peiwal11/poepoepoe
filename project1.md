#### This document contains numerous diagrams illustrating the client request flow under various circumstances,    
#### from different devices to different devices within a network comprising various devices.   
#### These diagrams were created using different methods, such as tcpdump and the logs from docker-compose,   
####  which include Nginx. Kong. Pyhon logs. These logs indicate who made the client request,   
####  where it was forwarded to , and who the response was sent back to.     
####  The purpose of this document is to demonstrate how packet flow and how the network handles requests.    
#### These diagrams are intended to help us better understand how this project operates.     


######  Network Structure    
  This diagram shows the structure of this project, there are two server, ServerA and ServerB  
  Each server hosts a complete stack including Keepalived, Kong, Nginx, and three Python containers.  
  On both server, Kong container locates at kong network and Nginx with three Python containers locate at another network named mdk.   
  Virtual IP: 10.191.7.231   
  ServerA IP: 10.191.7.17  
  ServerB IP: 10.191.7.16  
  A client sends a request to the VIP managed by Keepalived. Keepalived directs the request to one of the Kong instances (either on server A or server B). Kong processes the request and forwards it to one of the Nginx instances (either on server A or server B). Nginx balances the load and forwards the request to one of the three Pytho   n.     
  
  ![network struture](./network structure.jpg)    


######  Request flow while sending curl request from my computer, where 127.2.0.1 is a alternative loopback path and with a rule that map localhost:8123 to VirtualIP:8000 where also include two servers that is 10.0.2.15 and 10.0.2.16.  
        
      this diagram drew based on docker-compose logs

      ![mycomputer_send_request_through_loopback](./request_flow_while_docker-compose_runs_on_vm.jpg)    


######  address Kong and Nginx using different server      
    
      this diagram drawed based on  sudo tcpdump  

      ![kong_and_nginx_on_different_server](./kong_nginx_at_diff_server.jpg)

######  curl VirtualIP:8000 from my computer, both Kong and Nginx serving from one server       
    
      this diagram drew based on sudo tcpdump    
      
      ![docker_network](./request_flow_caught_packet.png)      

      



   

   


 
  
      

