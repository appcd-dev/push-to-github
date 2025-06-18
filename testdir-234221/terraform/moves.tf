moved {
  from = module.ec2.aws_instance.main[0]
  to   = module.stackgen_7edf1d48-153c-5ecb-b82a-263c1fb7f1b3.aws_instance.this
}

moved {
  from = module.vpc.aws_subnet.private[1]
  to   = module.stackgen_dfc6c5ff-6f5d-502a-816a-61592b3b12d4.aws_subnet.this
}

moved {
  from = module.vpc.aws_vpc.main
  to   = module.stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897.aws_vpc.this
}

moved {
  from = module.ec2.aws_instance.main[1]
  to   = module.stackgen_eba2b836-92ab-5adb-825b-a9bea5fcfedb.aws_instance.this
}

moved {
  from = module.s3.aws_s3_bucket.main
  to   = module.stackgen_2b90e357-27b2-5bc1-a194-3d49ab34b057.aws_s3_bucket.this
}

moved {
  from = module.vpc.aws_subnet.public[0]
  to   = module.stackgen_4cccbd16-30a4-5461-b8bc-3a82f5e8fc3c.aws_subnet.this
}

moved {
  from = module.vpc.aws_subnet.private[0]
  to   = module.stackgen_e637515a-f2e2-5f78-95b7-1968fa8e30e7.aws_subnet.this
}

moved {
  from = module.vpc.aws_subnet.public[1]
  to   = module.stackgen_b814f8b2-25ff-5e10-8114-0e2b5fbd6f7f.aws_subnet.this
}

moved {
  from = module.ec2.aws_ami.amazon_linux
  to   = module.stackgen_24f8806f-b0aa-52ec-a594-8e88072f2d32.aws_ami.this
}

