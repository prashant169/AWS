   ario, Bob, who is the customer requesting assistance, is having issues with his EC2 instance constantly changing IP addresses every time he stops and starts his instance. He cannot leave his instance on because it is very expensive for him to do so, and he requires this IP address to be set at a static IP address or else it breaks his other resources attached to it.

At the upper-right of these instructions, choose AWS. The AWS Management Console opens in a new tab.
Once you are in the AWS console, type and search for EC2 in the search bar on the top-left corner. Select EC2 from the list.

Tip: Alternatively, You can also find EC2 under Services - Compute in the top left corner

The search bar can be used to find the Amazon EC2 service. Once you find the service, select it.

Figure: AWS Management Console search bar.

You are now in the Amazon EC2 dashboard. In the left navigation menu, choose Instances. This option takes you to your current EC2 instances. You should currently see one EC2 instance, which you can ignore for now. We will not use that instance since we will launch our own for task 1.
![image](https://github.com/prashant169/AWS/assets/78464585/2ffb57ec-62c3-4448-be0b-7897a61c303e)


This picture shows the Instances home page when "Instances" is selected. This is where you will navigate to the top right button and select Create instance.

Figure: This is the EC2 dashboard where you can create instances and see an overall snapshot of current instances.

From the top right corner, select Launch instances. This is how you will launch EC2 instances from the console.

Launch EC2 instance

Figure: Launch EC2 instances by selecting the button at the top right corner.

Follow the steps below to complete the creation of an Amazon EC2 instance:

Step 1: Choose an Amazon Machine Image (AMI): 

Select the first entry for Amazon Linux 2 AMI (HVM)
An AMI is a template that contains the OS and configuration of the EC2 instance.
Step 2: Choose an Instance Type:

Select t3.micro and navigate to the bottom of the window and click the button Next: Configure Instance Details
Step 3: Configure Instance Details:

Network: Choose vpc-xxxxxxxx | Lab VPC
Subnet: Choose subnet-xxxxxx | Public Subnet 1
Auto-assign Public IP: Set to enable
Leave everything else as default and select Next: Add Storage Add Storage in the bottom right corner.
Step 4: Add Storage: Leave as default and navigate to the bottom right of the window and select Next: Add Tags.

Step 5: Add Tags:

Select Add Tag and under Key enter Name and under Value enter test instance
Navigate to the bottom right of the window and select Next: Configure Security Group
Step 6: Configure Security Group: 

Under Assign a security group, select the Select an existing security group radio button and select the security group with the name Linux Instance SG. Then navigate to the bottom of the window and hit Review and Launch.
Step 7: Review Instance Launch:

Navigate to the bottom of the window and hit Launch.
A pop-up window asks you to select an existing key pair or create a new key pair.

In the first drop down, keep Choose an existing key pair.
In the second drop down, select the key pair vockey | RSA.
Check the box underneath the second drop down. Once checked, select Launch Instances.
Once complete, you will return to the EC2 dashboard and see the EC2 instance that was just created. Select test instance. Under the Instance state, you will see Initializing. Wait until it says 2/2 before continuing.

This picture shows the current state of the instance. When launched, before using the instance, it must show a "ready" state.

Figure: Instances go through states, just like when a computer is booting up. When it is ready to use, the state will say "running" and you will be able to use it for services like SSH.

Select the checkbox of your test instance. At the bottom, select the Networking tab. In this tab, observe and note the Public IPv4 address and the Private IPv4 address. Once noted, navigate to the top right of the window, select the Instance state drop-down button, and select Stop instance. Once the Instance state changes to Stopped, navigate back down to the tabs and observe the Public and Private IPv4 address.

This picture shows the instance networking tab. Here you can see public and private IPv4 addresses, public and private IPv4 DNS, VPC ID, subnet ID, and Availability Zones.

Figure: This is the networking tab for instances. This shows any networking configurations related to the instance such as public and private IPv4 addresses and public and private IPv4 DNS.

When stopping an instance, navigate to the top of the EC2 dashboard and select the "Instance state" button and select "Stop instance".

Figure: To start, stop, or terminate an instance, navigate to the top of the EC2 dashboard and select the "Instance state" button.

Now restart the test instance by navigating to the top window and selecting the Instance state and Start instance. Wait until the Instance state changes to Running. Take note of the Public and Private IPv4 addresses. What did you notice between the public and private IP addresses when you stopped and started the EC2 instance? Would you consider this the Public IP a static or dynamic IP address? What would you consider the Private IP address for the EC2 instance? Do you think we have replicated the customer's issue?

When the instance was restarted, in the picture, the networking tab was revisited.

Figure: By starting the instance, you can see the details populate in the Networking tab.

We still haven't solved the customer's issue. Bob needs a permanent Public IP address that doesn't change when he stops and restarts his instance. AWS does have a solution that allocates a persistent public IP address to an EC2 instance, called an Elastic IP (EIP).

From the EC2 dashboard, navigate to Network and Security on the left navigation and select Elastic IPs. Notice that there are no EIPs. Create one by selecting the button Allocate Elastic IP address in the top right. Keep everything as default and hit Allocate. Take note of the EIP address.

This picture shows the left hand navigation pane of the EC2 dashboard and how to navigate to "Elastic IPs". While in the EC2 dashboard, under "Network and Security" select "Elastic IPs".

Figure: Within the EC2 dashboard, under "Network and Security" in the left navigation, select "Elastic IPs".

 

This picture shows the EIP home page when "Elasti IP addresses" is selected. This is where you will allocate an EIP by navigating to the top right button and selecting Allocate Elastic IP address.
Figure: Allocate an EIP by selecting the Allocate Elastic IP address button.

Select the EIP you just created by selecting the checkbox. Now attach this permanent, public IP address to the dynamic instance by navigating to the top right and navigating to Actions and Associate Elastic IP address.

This picture shows that the EIP created was selected and will now be associated to an instance by going to the "Actions" drop down menu at the top and selecting "Associate Elastic IP address".

Figure: The EIP created will now be associated to the EC2 instance by going to the actions menu and selecting "Associate Elastic IP address".

Leave the resource type as Instance, and select test instance from the Choose an Instance drop down menu. Under Private IP address, select the empty box. The Private IP associated with that instance is selected. Click the Associate button.

This picture shows the association of the EIP to the resource type which is an instance, by choosing the instance you created in the lab and selecting "Associate".

Figure: Associate the EIP to the test instance.

Navigate back to the Instances page using the left navigation pane. Select the checkbox for the test instance and navigate to the Networking tab. Take note of the Public IPv4 address. Did you notice that the EIP address is now the Public IP address? Now stop and start the instance and observe the differences. What did you observe? Is this a static or dynamic IP address? Did you solve the customer's issue? Why or why not?

 

Task 2: Send the Response to the customer (Group Activity)
Within your group, submit your findings.

Person 1 will act as Bob the customer, while Person 2 will act as the Cloud Support Engineer. Person 2 will talk over their findings to Person 1.

Note

This task should only take 5-10 minutes. Walk through your findings to the class.

 

Lab Complete 
 Congratulations! You have completed the lab.

Select End Lab at the top of this page and then select Yes to confirm that you want to end the lab.
A panel will appear, indicating that "DELETE has been initiated... You may close this message box now."
Select the X in the top right corner to close the panel.
 

Recap
In this lab, you have investigated the customer's environment and applied troubleshooting techniques that allowed you to resolve the customers’ issue. Within the scenario, you discovered that the customer Amazon EC2 instance (public instance) had a dynamic IP address which caused it to constantly change IPs when the instance was stopped and started. In order to fix this issue, you suggested attaching an EIP in order for the IP to become persistent (static). This was tested by SSHing into the test instance and starting and stopping it with a dynamic IP address.

 

Additional Resources
Amazon EC2 Instance public IP addressing

EIP

For more information about AWS Training and Certification, see https://aws.amazon.com/training/.

Your feedback is welcome and appreciated.
If you would like to share any suggestions or corrections, please provide the details in our AWS Training and Certification Contact Form.

© 2022 Amazon Web Services, Inc. and its affiliates. All rights reserved. This work may not be reproduced or redistributed, in whole or in part, without prior written permission from Amazon Web Services, Inc. C
