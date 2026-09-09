# Read existing target AWS VPC infrastructure
data "aws_vpc" "selected" {
  id = var.aws_vpc_id
}

data "aws_subnet" "baremetal_subnet" {
  id = var.aws_subnet_id
}

# Provisioning virtual machines on the NC2 cluster in AWS
resource "nutanix_virtual_machine" "app_workload" {
  name                 = "aws-nc2-app-vm-01"
  cluster_uuid         = var.nc2_cluster_uuid
  num_vcpus_per_socket = 2
  num_sockets          = 2
  memory_size_mib      = 8192

  nic_list {
    subnet_uuid = var.nutanix_overlay_subnet_uuid
  }

  disk_list {
    disk_size_bytes = 52428800000 # 50 GB in bytes

    device_properties {
      device_type = "DISK"
      disk_address = {
        device_index = 0
        adapter_type = "SCSI"
      }
    }

    data_source_reference = {
      kind = "image"
      uuid = var.ubuntu_image_uuid
    }
  }
}