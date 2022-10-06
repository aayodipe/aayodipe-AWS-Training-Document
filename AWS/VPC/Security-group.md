### SECURITY GROUP
==================
A security group controls the traffic that is allowed to reach and leave the resources that it is associated with. For example, after you associate a security group with an EC2 instance, it controls the inbound and outbound traffic for the instance.

### Basic Information about Security Group
=============================================
* When you create a VPC, it comes with a default security group. 
* You can create additional security groups for each VPC. 
* You can associate a security group only with resources in the VPC for which it is created.

* For each security group, you add rules that control the traffic based on protocols and port numbers. 
* There are separate sets of rules for inbound traffic and outbound traffic.

### Characteristics of security groups
===========================================

* A security group name must be unique within the VPC.
* Security groups are stateful. For example, if you send a request from an instance, the response traffic for that request is allowed to reach the instance regardless of the inbound security group rules. Responses to allowed inbound traffic are allowed to leave the instance, regardless of the outbound rules.
* You can specify allow rules, but not deny rules.

* When you first create a security group, it has no inbound rules. Therefore, no inbound traffic is allowed until you add inbound rules to the security group.

* When you first create a security group, it has an outbound rule that allows all outbound traffic from the resource. You can remove the rule and add outbound rules that allow specific outbound traffic only. If your security group has no outbound rules, no outbound traffic is allowed.

* When you associate multiple security groups with a resource, the rules from each security group are aggregated to form a single set of rules that are used to determine whether to allow access. This is one of the way Security group is differ from Network ACL

* When you add, update, or remove rules, your changes are automatically applied to all resources associated with the security group. 

* When you create a security group rule, AWS assigns a unique ID to the rule. You can use the ID of a rule when you use the API or CLI to modify or delete the rule.