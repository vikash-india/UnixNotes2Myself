# Description: Administer Amazon EC2 Instances

### How to Launch an Instance on Amazon EC2
* Login to Amazon AWS Console.
* Generate Key Pair (If needed).
    1. Go to EC2 Dashboard.
    2. Click on Network Security - Key Pairs.
    3. Click on Create Key Pair
    4. Enter Key pair name (say amazon-machine-name-key) and click on Create button.
    5. A key will be created and displayed on the screen. The key file will automatically be downloaded. Keep this file safely.
* Create Security Group (If needed)
    1. Go to EC2 Dashboard.
    2. Click on Network Security - Security Groups.
    3. Click on Create Security Group button.
    4. Enter 'Security group name'(say sg-1), description, select VPC if needed otherwise leave it blank.
    5. Click on Add Rule to modify inbound rules based on the need.

        | Type              | Protocol      | Port Range    | Source    |
        | ----------------- | ------------- |-------------- |---------- |
        | HTTP              | TCP           | 80            | 0.0.0.0/0 |
        | HTTPS             | TCP           | 443           | 0.0.0.0/0 |
        | All ICMP          | All           | N/A           | 0.0.0.0/0 |
        | Custom TCP Rule   | TCP           | 1234          | 0.0.0.0/0 |
        | Custom TCP Rule   | TCP           | 1254          | 0.0.0.0/0 |
    6. Click on Create button to create Security Group.
* Launch Instance
    1. Step 1: Choose an Amazon Machine Image (AMI)
        - Click on Community AMIs
        - Choose 64-Bit "RHEL-7.2_HVM_GA-20151112-x86_64-1-Hourly2-GP2 - ami-3f03c55c" and click on Select button.
    2. Step 2: Choose an Instance Type
        - Select an appropriate Type (Say t2.medium) and click on Next: Configure on Instance Details button.
    3. Step 3: Configure Instance Details
        - Select Network to an appropriate VPC.
        - Select Enable termination protection.
        - Click on Next: Add Storage button.
    4. Step 4: Add Storage
        - Update the size to an appropriate value, Volume Type to 'General Purpose SSD (GP2)
        - Click on Add New Volume to add another EBS storage.
        - Click on Next: Tag Instance button.
    5. Step 5: Tag Instance
        - Update the Value column for the key Name.
        - Click on Create Tag button to add more tags.
        - Click on Next: Configure Security Group.
    6. Step 6: Configure Security Group
        - Choose Select an existing security group radio button.
        - Select security group with name 'sg-1' created above.
        - Click on 'Review and Launch'.
    7. Step 7: Review Instance Launch
        - Review the details and click on Launch.
    8. Add the key pair details from the 'Select an existing key pair or create a new key pair' popup.
        - Select a key pair 'amazon-machine-name-key' (Created above) from the dropdown.
        - Select the checkbox 'I acknowledge that I have access to the selected private key file (mediasphere.pem), and
          that without this file, I won't be able to log into my instance.'
        - Click on Launch Instances.
* Connect to the new instance
    1. Go to EC2 Dashboard.
    2. Click on Instances - Instances.
    3. Wait for the 'Intance State' column to change to 'running' for the newly created machine.
    4. Select the machine and click on Connect.
    5. Use the details displayed to connect to the machine.
* Now setup the machine as required.

### TODO
* None
