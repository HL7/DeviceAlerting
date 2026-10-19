Profile: DeviceTechnicalLimitAlert
Parent: DeviceTechnicalAlert
Id: device-technical-limit-alert
Title: "Device Technical Limit Alert"
Description: "A technical DeviceAlert raised because a device-internal value crossed a configured limit. Because derivedFrom.observation is mandatory in the base resource, such an alert always conveys the underlying observation as well as the limit."
* derivedFrom 1..1
* derivedFrom.limit 1..1
