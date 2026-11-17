Profile: DevicePhysiologicalAlert
Parent: DeviceAlert
Id: device-physiological-alert
Title: "Device Physiological Alert"
Description: "A DeviceAlert representing a physiological alert condition, where the alert is about the subject being monitored rather than about the device itself."
* subject only Reference(Patient)
* type 1..1
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#physiological
* device 1..1
* device only Reference(Device or DeviceMetric)
* derivedFrom 1..*
* insert DeviceAlertMustSupport
