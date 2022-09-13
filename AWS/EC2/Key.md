### AWS Key Pair 

A key pair, consisting of a public key and a private key, is a set of security credentials that you use to prove your identity when connecting to an Amazon EC2 instance.

- Region Scope
- Consist of Public and Private Keys
- RSA or ED25519
    - (Rivest–Shamir–Adleman) is a public-key cryptosystem that is widely used for secure data transmission. It is also one of the oldest.
    - ED25519 is an elliptic curve based public-key system commonly used for SSH authentication.
- The username for the ssh depends on the Operating system.
    - User
    - ubuntu 
    - ec2-user
    - create locally or import
    - For Window(Only Use RSA key-pair)
    - To Create key-pair in all region, you should use AWS CLI
   Sample
    
#!/bin/bash

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd


or 

