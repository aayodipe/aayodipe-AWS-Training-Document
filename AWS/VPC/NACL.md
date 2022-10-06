### Network Access Control List

Basic things that you need to know about network ACLs:

* Your VPC automatically comes with a modifiable default network ACL. By default, it allows all inbound and outbound IPv4 traffic and, if applicable, IPv6 traffic.

* You can create a custom network ACL and associate it with a subnet. By default, each custom network ACL denies all inbound and outbound traffic until you add rules.

* Each subnet in your VPC must be associated with a network ACL. If you don't explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.

* You can associate a network ACL with multiple subnets. However, a subnet can be associated with only one network ACL at a time. When you associate a network ACL with a subnet, the previous association is removed.

* A network ACL has inbound rules and outbound rules. Each rule can either allow or deny traffic. Each rule has a number from 1  to 32766. 

* The Rules are evaluate in order, starting with the lowest numbered rule, when deciding whether allow or deny traffic. 

* If the traffic matches a rule, the rule is applied and we do not evaluate any additional rules. 

* AWS recommend that you start by creating rules in increments (for example, increments of 10 or 100) so that you can insert new rules later on, if needed.

* AWS evaluate the network ACL rules when traffic enters and leaves the subnet, not as it is routed within a subnet.

* Network ACLs are stateless, which means that responses to allowed inbound traffic are subject to the rules for outbound traffic (and vice versa).

* You can create 200 NACL per VPC and 20 Rules per NACL

### Network ACL rules

The following are the parts of a network ACL rule:

# Rule number. 
Rules are evaluated starting with the lowest numbered rule. As soon as a rule matches traffic, it's applied regardless of any higher-numbered rule that might contradict it.

# Type.
 The type of traffic; for example, SSH. You can also specify all traffic or a custom range.

# Protocol. 
You can specify any protocol that has a standard protocol number. 

# Port range. 
The listening port or port range for the traffic. For example, 80 for HTTP traffic.

# Source. 
[Inbound rules only] The source of the traffic (CIDR range).

# Destination. 
[Outbound rules only] The destination for the traffic (CIDR range).

# Allow/Deny. 
Whether to allow or deny the specified traffic.

### DEFAULT AND CUSTOM NETWORK ACL 
# The default network ACL
 Is configured to allow all traffic to flow in and out of the subnets with which it is associated. 

 # The custom network ACL
  It has only one inbound and one outbound rule when created which deny all inbound and outbound traffic by default.

  After you create a custom Network ACL, you have to explicit associate a subnet.