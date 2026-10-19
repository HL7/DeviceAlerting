Profile: DevicePhysiologicalLimitAlert
Parent: DevicePhysiologicalAlert
Id: device-physiological-limit-alert
Title: "Device Physiological Limit Alert"
Description: "A physiological DeviceAlert raised because a measured value crossed a configured limit. The limit that was crossed is conveyed in derivedFrom.limit."
* derivedFrom 1..1
* derivedFrom.limit 1..1
