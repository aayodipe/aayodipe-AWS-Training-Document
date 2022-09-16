### AWS Well-Architected Framework
====================================

The Well-Architected Framework was developed to help you, as as customer, build secure, high-performing, resilient and efficient infrastructure for application.

This Framework defined best practice for 
1. Security
2. Operational Excellence
3. Reliability
4. Performance Efficiency
5. Cost Optimization

The Security Pillar  of this Framework has seven security design principal

1. Implement a strong Identity Foundation
    - Use Principal of least Privilege
    - Use proper IAM roles and Permissions  
    - Define appropriate authorization for each resources that will interact with your AWS Cloud
    - Eliminate Long term access Key. Instead use temporary access key through assume role.

2. Enable Traceability and observability - 
    - Enable Audit logs by centralized log collection
    - Create alert that should be monitored by one or several teams
    - Respond to each alert as soon as possible

3. Apply Security at All Layers( Defense-in-Depth)
    - You can't use just on layer of security or protection
    - Apply network Security
        - Flow-log  at VPC level at VPC Level
        - Network Access Control List at Subnet Level
    - Apply Instance Security 
        - Security Group at the Instance Level
    - Apply OS Security
        - IP Table for Linux
        - Window Defender at Window 
    - Apply Load Balancer Security
        - Enable Access Log at Load Balancer Level
    - Apply Application Security
        - Web application Firewall
4. Automate Security Best Practices
    - Embed Security tools in your infrastructure as code 

5. Protect Data in Transit and at Rest
    - Use encryption to protect data at rest
    - Use SSL/TLS  to encrypt your data in transit
    - Create enforce access control list

6. Key People away from Data
    - Create mechanism to reduce or eliminate human access to production data thus reduce human error
    
7. Prepare for Security Events:
    - Define how you will respond to security incident if/when occur
    - Create a playbook on who,what and how to do things
    - Use automation if possible.


### Other Security Areas that the well Architected framework identify for security best practice

# a. Identity and Access Management( AWS IAM)
  - Identity-Base- Policy
    - IAM Users
    - IAM Groups
    - IAM Roles
  - Resource-Base Policy
  - Permission Boundary
  - Service Control Protocol
b. Detective Controls
  - Design and Implement Security Monitoring and Alerting( AWS CloudTrail)
  - Design and Implement a Logging solution
c. Infrastructure protection
d. Data Protection
e. Incident Response

