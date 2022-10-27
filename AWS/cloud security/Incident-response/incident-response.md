###  INCIDENT RESPONSE
=========================

Incidents are defined as a violation (or a threat violation) of security policies, acceptable usage policies or standard security practice. Incidents can either be harmful such as Full blown DDos Attack or mare like just a incorrect or misconfiguration of security rule. Whenever an Incident occur, it requires the right personnel or automation to take an actions. For example, A DDoS attack needs the Autoscaling service or AWS Shield to take action by spinning more instance to protect the continuous availability of the resources or correction if the misconfigured security group to prevent it from give access to unauthorized entity.

A Response to an incident can either be manual or automated. Example of a manual incident response is when a personnel received an alert of a security group misconfiguration and the personal review  and decide whether it should be allowed or immediately corrected or revert based of the business use case. An Automated solution may be to set an AWS Config to automatically revert the security group changes immediately it received a notification of the incident.

# The steps created to correct or revert an incident when it occur is referred to as incident response plan or incident handling program.

# INCIDENT RESPONSE PLAN
=========================
Both the CSP and the customer are jointly responsible for security in the cloud. The CSP is responsible for security of the cloud while the customer is responsible of security in the cloud. 

# AWS Incident response Plan
As for AWS, they deployed numerous security tools and services layed out in their incident response plan for their own shared of responsibility in the cloud. AWS makes evident of this available to it's customers through the Compliance and security in the AWS Cloud, AWS Artifact.

# Customers Incident response plan
It's the customer's responsibility to design an incident response plan for the workload they have running in the cloud in other to cover their shared responsibility model, that is the security in the cloud.
To ensure that you have a standard incident response plan, a client needs to continuously measure how mature their incident response plan is using incident Response Maturity Model.


# INCIDENT LIFECYCLE
===================

# Detect ===> Isolate? ===> Contain ===> Remediate ===> Recover ?===> Forensics

# Detect
    An incident should start with the detection of the suspicious event or activities.
# Isolate
    After affirming or confirming the negative effect of the activity, you isolate the affected resources
# Contain
    Once you Isolate the affected resources, ensure to contain it so that it does not spread to other unaffected resources.
# Remediate
    Once contained the affected resources, you can start applying remediation or corrective action to the affected resources
# Recover
    After remediate the affected resources, ensure they are fully recover before the resume for business as usual.
# Forensic
    Finally, analysis the event to identify the root cause of the incident and understand the behavior of the affected resources throughout the incident lifecycle.



# Incident Response Best Practice
=================================
1. Development Phase - 
    - Identify the personal(people) required to deal with security incident- 
    - Perform gap analysis to determine the gap between current security state and desire security state. This gives you an understanding of what work need to be done
    - Establish an inventory of your resources
    - Have a clear control of security available to you in the cloud 

2. Implementation Phase
    - Implement Detailed logging and Monitor across your infrastructure
    - Ensure logging at different layer of workload. This include logging at the resources, at the application level and service level
    - Established relevant metrics from reported logs. And for every metrics create thresholds and alarms
    - Configure notification to be delivered through the right channel
    - Automate the security control as much as possible 
    - Put the incident response in  writing
    - Design a war room(physical or virtual place for team meeting) to deal with security incident

3. Monitor and Test
    - Arrange to carry out the plan in a control environment
    - Prepare and execute the security incident response simulations(SIRS)
    - Regardless of whether it is a simulation or real scenario, document all action taking

4. Update
    - Document the Root Cause Analysis after every execution of the IR plan
    - Review and update the procedure that failed to solved the incident at every stage.



## Insider Threat and Former Employee Access 
## Amazon EC2 Instance Compromise by Malware
    - Take a snapshot
    - Isolate the instance
    - Tag the instance as compromised and restrict access to it from every one and application
    - For forensic analysis, the snapshot should be deploy to a sepate machine in an isolated environment
    - Analyse the logs
    - automate the incident response if possible using cloud native tools like lambda
## Credentials Leaked