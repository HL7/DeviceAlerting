Profile: DeviceAdvisoryAlert
Parent: DeviceAlert
Id: device-advisory-alert
Title: "Device Advisory Alert"
Description: "A DeviceAlert representing an advisory: an alert about a nominal change in state or condition that is not an alarm. An advisory may be about a patient, a device, a location or a group, so the subject is not restricted beyond the base resource."
* type 1..1
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#advisory
* insert DeviceAlertMustSupport
