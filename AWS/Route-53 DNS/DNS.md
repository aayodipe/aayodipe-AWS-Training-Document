## How internet traffic is routed to your website or web application
====================================================================
All computers on the internet, from your smart phone or laptop to the servers that serve content for massive retail websites, communicate with one another by using numbers. These numbers, known as IP addresses, are in one of the following formats:

Internet Protocol version 4 (IPv4) format, such as 192.0.2.44 or 10.0.1.29

Internet Protocol version 6 (IPv6) format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345

When you open a browser and go to a website, you don't have to remember and enter a long string of characters like that. Instead, you can enter a domain name like example.com and still end up in the right place. A DNS service such as Amazon Route 53 helps to make that connection between domain names and IP addresses.


#   Understanding AWS Domain Name
==================================
Domain Name is a mapping between a friendly and easy to remember name and a hard to remember IP address.

# What is Amazon Route 53?
Amazon Route 53 is a highly available and scalable Domain Name System (DNS) web service. You can use Route 53 to perform three main functions in any combination: domain registration, DNS routing, and health checking.

## Main usage of AWS Route 53
===============================
1. Register domain names
2. Domain Name System- Route internet traffic to the resources for your domain
3. Check the health of your resources such as EC2



# 1. Register domain names
============================
#    - Register new domain.
         see https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-register.html
#    - Transferring registration for a domain to Amazon Route 53. See   
        https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html
#    - Use Amazon Route 53 as your DNS service. 
        see https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring.html



# 2. DNS Service i.e Route Traffic to your AWS Resources
=============================================================
# Component of Route 53 DNS
===========================
#    Hosted Zone - A container that contains entire routing information for your domain and subdomain

        - Public hosted zone 
            A container that holds information about how you want to route traffic on the internet for a specific domain, such as example.com, and its subdomains (acme.example.com, zenith.example.com). After you create a hosted zone, you create records that specify how you want to route traffic for the domain and subdomains.

        - Private hosted Zone




## Routing policy
    A setting for records that determines how Route 53 responds to DNS queries. Route 53 supports the following routing policies:

## Simple routing policy – 
    Use to route internet traffic to a single resource that performs a given function for your domain, for example, a web server that serves content for the example.com website.

## Failover routing policy – 
    Use when you want to configure active-passive failover.
    - Active-active failover -  
        Use this failover configuration when you want all of your resources to be available the majority of the time
    - Active-passive failover
        Use an active-passive failover configuration when you want a primary resource or group of resources to be available the majority of the time and you want a secondary resource or group of resources to be on standby in case all the primary resources become unavailable


## Geolocation routing policy – 
    Use when you want to route internet traffic to your resources based on the location of your users.

## Geoproximity routing policy – 
    Use when you want to route traffic based on the location of your resources and, optionally, shift traffic from resources in one location to resources in another.

## Latency routing policy – 
    Use when you have resources in multiple locations and you want to route traffic to the resource that provides the best latency.

## IP-based routing policy – 
    Use when you want to route traffic based on the location of your users, and have the IP addresses that the traffic originates from.

## Multivalue answer routing policy – 
    Use when you want Route 53 to respond to DNS queries with up to eight healthy records selected at random.

## Weighted routing policy – 
    Use to route traffic to multiple resources in proportions that you specify.

# 3. Check the health of your resources



