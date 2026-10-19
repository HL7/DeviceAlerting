// Limit variant of a technical alert. The alert code states the condition
// (battery low); the threshold that was crossed is conveyed in derivedFrom.limit.
Instance: TechnicalLimitAlertExample
InstanceOf: DeviceTechnicalLimitAlert
Usage: #example
Title: "Technical Limit Alert Example - Battery Charge Below Low Limit"
Description: "The battery level of the device fell below its configured low limit."
* status = #in-progress
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#technical
* code = urn:iso:std:iso:11073:10101#196802 "MDC_EVT_BATT_LO"
* subject = Reference(ExampleMdsDevice)
* device = Reference(ExampleMdsDevice)
* occurrence.start = "2026-09-01T09:20:00+02:00"
* derivedFrom[0].observation = Reference(ExampleBatteryChargeObservation)
* derivedFrom[0].limit.low = 20 '%' "%"
