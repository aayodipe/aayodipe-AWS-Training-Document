####  WEB APPLICATION FIREWALL(WAF)
=================================
We have seen lots of infrastructure protection mechanism and monitoring tools such VPC, Subnets, route-tables,VPC endpoints, Private-links, NACL, Security-group and the rest. But not all attacks can be detected by all this tools and controls. We need some security tools to block the layers application layer attacks such as malicious HTTP activities. 

With AWS WAF, you can protect your web application and APIs from both IPV4 and IPV6 web  attacks. With AWS WAF services, you can create custom rules or use a managed rules to block well-known SQL injection, cross-site scripting or specific traffics patterns that can be define such as connection from India, Nigeria or a URL with a specific words e.g secret.

With WAF you can filter or block any part of the web request, including the IP address, HTTP header, HTTP body etc 
# see link for web request data https://www.tutorialspoint.com/http/http_requests.htm 

## Web Access Control List(WEB ACL)
======================================

The most fundamental object of AWS WAF is Web ACL creation. With Web ACL, you can either add a custom rules or  managed rule groups.

# You can use criteria like the following to allow or block requests:

IP address origin of the request

Country of origin of the request

String match or regular expression (regex) match in a part of the request

Size of a particular part of the request

Detection of malicious SQL code or scripting

# Managed Rules Group is a prefigured set of rules defined by AWS or AWS Marketplace sellers. The Managed Groups protect again vulnerabilities defined in OWASP Top 10 Security Risks

### DEMO 1: Use the 'Amazon IP Reputation List' managed rule to block sources associated with bots and 'Linux Operating System' managed rule to block request patterns associated with exploitation of vulnerabilities specific to Linux

### DEMO 2: create custom rule to block web request from a specific IP address and from Nigeria or India.


#### AWS SHIELD
===============

A Denial-of-Service (DoS) attack is an attack meant to shut down a machine or network, making it inaccessible to its intended users. When multiple compromised source generate traffic intended to make a computer  or network resources unavailable to it's intended users, this is called Distributed Denial -of-Service(DDos)

To protect a application deployed in AWS cloud from DDos Amazon offers the AWS SHIELD.

AWS Shield provides constant detections and automatic inline mitigation that minimize application downtime or performance degradation against DDoS Attack

## Types of AWS Shield
=======================
1. AWS Shield Standard
2. AWS Shield Advance

# AWS Shield Standard
========================

This is a default version and it is available for all AWS Account at no-cost. It defends your environment against the most common Network(layer 3) and Transport(layer 4) known infrastructure attacks when you use cloudfront and Route 53.


# AWS Shield Advance
=======================

This is a paid version. It enables additional detection and mitigation against larger and more sophisticated DDoS attack on EC2, ELB, AWS Cloudfront, AWS Global Accelerator and Route 53

# Additional feature of AWS Shield Advance

1. Near real-time visibility and report. With attack notification and attack forensic report  on layer 3, 4 and 7 and attack historical report
2. Integration with AWS WAF. You can attend to incident as the occur using the AWS WAF rules
3. 24/7 access to AWS DDoS Response Team (DRT)
4. Cost Protection. You get reimburse for expense incurred as a result of DDoS-related attack in AWS Shield Advance protected resources such as EC2, ELB, Cloudfront, Route 53 and AWS Global Accelerator.

AWS Shield is not activated by default. It requires a 1-year subscription commitment and charges a monthly fee of $3,000.00, plus a usage fee based on data transfer out from Amazon CloudFront, Elastic Load Balancing (ELB), Amazon Elastic Compute (EC2), and AWS Global Accelerator.