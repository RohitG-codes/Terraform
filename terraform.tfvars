#first generate private and public key using ssh-keygen in the current directory

aws_access_key = "Enter Your AWS Access Key"                     # AWS Access_Key  
aws_secret_key = "Enter Your AWS Secret Key" # AWS Secret_Key  

region                = "ap-south-1"                    # AWS region
web_sec_grp_name      = "My-terraform-web-SG"           # Name for the public security group
db_sec_grp_name       = "My-terraform-db-SG"            # Name for the privae security group
vpc_name              = "My-terraform-VPC"              # Name for the vpc
vpc_cidr_block        = "10.0.0.0/16"                   # CIDR block for the VPC
internet_gateway_name = "My-terraform-internet-gateway" # Name for the internet-gateway
public_subnet_name    = "My-terraform-public-subnet"    # Name for the internet-gateway
private_subnet_name   = "My-terraform-private-subnet"   # Name for the internet-gateway
public_subnet_cb      = "10.0.1.0/24"                   # CIDR block for the public subnet
private_subnet_cb     = "10.0.0.0/24"                   # CIDR block for the private subnet
public_rt_name        = "My-terraform-public-rt"        # Name for the public route-table
private_rt_name       = "My-terraform-private-rt"       # Name for the private route-table
ami_id                = "ami-007020fd9c84e18c7"         # AMI ID for the EC2 instance
instance_type         = "t2.micro"                      # EC2 instance type
web_instance_name     = "My-terraform-web-instance"     # EC2 web instance name
db_instance_name      = "My-terraform-db-instance"      # EC2 db instance name
key_pair_name         = "My-terraform-key-pair"         # EC2 key-pair name
availability_zone     = "ap-south-1a"                   # AWS availability_zone
nat_gateway_name      = "My-Terraform-NAT_GATEWAY"      # Name for the NAT_GATEWAY