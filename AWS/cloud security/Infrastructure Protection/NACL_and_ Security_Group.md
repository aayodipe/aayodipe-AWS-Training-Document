## Network Access Control Lists(Network ACL)
===========================================
Network Access Control Lists(Network ACL) acts as a firewall at the subnet level. A network access control list (Network ACL) allows or denies specific inbound or outbound traffic at the subnet level. When you create a VPC, a default Network ACL is automatically create. You can use the default network ACL for your VPC, or you can create a custom network ACL for your VPC with rules that are similar to the rules for your security groups in order to add an additional layer of security to your VPC.

##  Network ACL basics
=====================
The following are the basic things that you need to know about network ACLs:

1. Your VPC automatically comes with a modifiable default network ACL. By default, it allows all inbound and outbound IPv4 traffic and, if applicable, IPv6 traffic.

2. You can create a custom network ACL and associate it with a subnet. By default, each custom network ACL denies all inbound and outbound traffic until you add rules.

3. Each subnet in your VPC must be associated with a network ACL. If you don't explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.

4. You can associate a network ACL with multiple subnets. However, a subnet can be associated with only one network ACL at a time. When you associate a network ACL with a subnet, the previous association is removed.

5. A network ACL has inbound rules and outbound rules. Each rule can either allow or deny traffic. Each rule has a number 1 from to 32766. AWS evaluate the rules in order, starting with the lowest numbered rule, when deciding whether allow or deny traffic. If the traffic matches a rule, the rule is applied and we do not evaluate any additional rules. We recommend that you start by creating rules in increments (for example, increments of 10 or 100) so that you can insert new rules later on, if needed.

6. AWS evaluate the network ACL rules when traffic enters and leaves the subnet, not as it is routed within a subnet.

7. Network ACLs are stateless, which means that responses to allowed inbound traffic are subject to the rules for outbound traffic (and vice versa).

### Network ACL rules
=====================
You can add or remove rules from the default network ACL, or create additional network ACLs for your VPC. When you add or remove rules from a network ACL, the changes are automatically applied to the subnets that it's associated with.

The following are the parts of a network ACL rule:

- Rule number. Rules are evaluated starting with the lowest numbered rule. As soon as a rule matches traffic, it's applied regardless of any higher-numbered rule that might contradict it.

- Type. The type of traffic; for example, SSH. You can also specify all traffic or a custom range.

- Protocol. You can specify any protocol that has a standard protocol number. For more information, see Protocol Numbers. If you specify ICMP as the protocol, you can specify any or all of the ICMP types and codes.

- Port range. The listening port or port range for the traffic. For example, 80 for HTTP traffic.

- Source. [Inbound rules only] The source of the traffic (CIDR range).

- Destination. [Outbound rules only] The destination for the traffic (CIDR range).

- Allow/Deny. Whether to allow or deny the specified traffic.


### SECURITY GROUP
===================
A security group acts as a virtual firewall for your EC2 instances to control incoming and outgoing traffic. Inbound rules control the incoming traffic to your instance, and outbound rules control the outgoing traffic from your instance. When you launch an instance, you can specify one or more security groups. If you don't specify a security group, Amazon EC2 uses the default security group.