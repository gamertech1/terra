module "rg" {
  source   = "./modules/rg"
  prefix   = var.prefix
  location = var.location
}
module "sg" {
  source         = "./modules/storage-account"
  prefix         = var.prefix
  resource_group = module.rg.rg-1
  location       = var.location
}

module "vm" {
  source         = "./modules/vm"
  resource_group = module.rg.rg-1
  location       = var.location
  size = var.size
}