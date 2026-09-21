Profile: DevicePhysiologicalAlert
Parent: DeviceAlert
Id: device-physiological-alert
Title: "Device Physiological Alert"
Description: "A DeviceAlert representing a physiological alert condition, where the alert is about the subject being monitored rather than about the device itself."
* subject only Reference(Patient)
* device 1..1
* device only Reference(DeviceMetric)
* derivedFrom 1..*
