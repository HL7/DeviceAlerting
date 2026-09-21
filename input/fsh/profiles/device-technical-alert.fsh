Profile: DeviceTechnicalAlert
Parent: DeviceAlert
Id: device-technical-alert
Title: "Device Technical Alert"
Description: "A DeviceAlert representing a technical alert condition, where the alert is about the device itself rather than about a patient."
* subject only Reference(Device)
* device 1..1
* device only Reference(Device)
