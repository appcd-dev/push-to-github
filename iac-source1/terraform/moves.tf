moved {
  from = module.compute.aws_eks_cluster.eks
  to   = module.stackgen_34b80001-017a-5312-9144-65da25a068a9.aws_eks_cluster.this
}

moved {
  from = module.network.aws_subnet.public[0]
  to   = module.stackgen_031238de-adc8-51a3-91d9-c93de1930675.aws_subnet.this
}

moved {
  from = module.storage.random_string.suffix
  to   = module.stackgen_473ba727-cbcd-51d9-b1ab-49f583404fe7.random_string.this
}

moved {
  from = module.compute.aws_iam_policy_document.assume_role_policy
  to   = module.stackgen_63b6a8c7-d442-5a71-923d-61c60aa9c54d.aws_iam_policy_document.this
}

moved {
  from = module.network.aws_availability_zones.available
  to   = module.stackgen_37476bf3-9a65-509a-b352-edea3c6656b2.aws_availability_zones.this
}

moved {
  from = module.network.aws_subnet.public[1]
  to   = module.stackgen_2c912ed8-8a45-51b0-b0c5-cc6812d0a890.aws_subnet.this
}

moved {
  from = module.network.aws_vpc.main
  to   = module.stackgen_558d7ac4-ccc6-5b7b-b41a-fa5157526267.aws_vpc.this
}

moved {
  from = module.storage.aws_s3_bucket.athena_results
  to   = module.stackgen_14816102-e587-5b6f-bab3-dff0045f4512.aws_s3_bucket.this
}

moved {
  from = module.compute.aws_iam_role.eks_role
  to   = module.stackgen_7ef7e820-8361-52fd-a35f-aebce364af00.aws_iam_role.this
}

moved {
  from = module.storage.aws_s3_bucket_public_access_block.athena_results_pab
  to   = module.stackgen_e7de1e20-14c7-5811-ba15-9963dc266cb8.aws_s3_bucket_public_access_block.this
}

