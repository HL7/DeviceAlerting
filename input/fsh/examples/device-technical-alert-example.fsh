// Event variant of a technical alert: the condition has no measured value and no
// threshold, so derivedFrom is absent. Contrast with TechnicalLimitAlertExample.
Instance: TechnicalAlertExample
InstanceOf: DeviceTechnicalAlert
Usage: #example
Title: "Technical Alert Example - Communication Lost"
Description: "The device lost communication. The condition has no underlying measurement and no limit, so no observation is referenced."
* status = #in-progress
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#technical
* code = urn:iso:std:iso:11073:10101#196748 "MDC_EVT_COMM_LOST"
* subject = Reference(ExampleMdsDevice)
* device = Reference(ExampleMdsDevice)
* occurrence.start = "2026-09-01T11:40:00+02:00"
