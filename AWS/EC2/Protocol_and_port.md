## What is a Port
    Ports is a logical connection that's used by a programs and services to exchange information.

## The Internet Assigned Numbers Authority (IANA) maintains the full list of port numbers and protocols assigned to them.

Port will have a unique numbers that Identified them. The Number range from 0 - 65535

### COMMON PORT NUMBERS:

# Ports 20 and 21: 
    File Transfer Protocol (FTP). FTP is for transferring files between a client and a server.
# Port 22: 
    Secure Shell (SSH). SSH is one of many tunneling protocols that create secure network connections.
# Port 25: 
    Simple Mail Transfer Protocol (SMTP). SMTP is used for email.
# Port 995:
    POP3. Receiving  Encrypted Email using TLS 
# Port 53: 
    Domain Name System (DNS). DNS is an essential process for the modern Internet; it matches human-readable domain names to machine-readable IP addresses, enabling users to load websites and applications without memorizing a long list of IP addresses.
# Port 80: 
    Hypertext Transfer Protocol (HTTP). HTTP is the protocol that makes the World Wide Web possible.
# Port 123: 
    Network Time Protocol (NTP). NTP allows computer clocks to sync with each other, a process that is essential for encryption.
# Port 179: 
    Border Gateway Protocol (BGP). BGP is essential for establishing efficient routes between the large networks that make up the Internet (these large networks are called autonomous systems). Autonomous systems use BGP to broadcast which IP addresses they control.
# Port 443: 
    HTTP Secure (HTTPS). HTTPS is the secure and encrypted version of HTTP. All HTTPS web traffic goes to port 443. Network services that use HTTPS for encryption, such as DNS over HTTPS, also connect at this port.
# Port 500: 
    Internet Security Association and Key Management Protocol (ISAKMP), which is part of the process of setting up secure IPsec connections.
# Port 3389: 
    Remote Desktop Protocol (RDP). RDP enables users to remotely connect to their desktop computers from another device.

A port is always Associated with an IP address such as

32.23.55.21:80
39.56.88.32:443
90.32.41.58:21

When you want to communicate from one computer to another computer, you use IP address to locate where the computer is located on the continent and use the port number to determine which services or application on the server that the client want to use weather it is a webpage, ftp or ssh.