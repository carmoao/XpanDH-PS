Profile: DeviceUseStatementXpandh
Parent: $DeviceUseStatement-uv-ips
Id: DeviceUseStatement-xpandh
Title:    "Device Use Statement"
Description: """This profile constrains the DeviceUseStatement resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the DeviceUseStatement resource for the purpose of the European patient summary."
* device only Reference(DeviceXpandh)
* subject only Reference(PatientPsXpandh)


Profile: DeviceXpandh
Parent: $Device-uv-ips
Id: Device-xpandh
Title:    "Device (EU PS)"
Description: """This profile constrains the Device resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Device resource for the purpose of the European patient summary."
* deviceName 0..
  * name ^short = "The name of the device"
* type from EHDSIMedicalDevice