Instance: TechnicalAlertExample
InstanceOf: DeviceTechnicalAlert
Usage: #example
Title: "Technical Alert Example - Low Battery"
Description: "The device reports a low battery condition."
* status = #in-progress
* type = http://hl7.org/fhir/devicealert-type#technical
* code = urn:iso:std:iso:11073:10101#196802 "MDC_EVT_BATT_LO"
* subject = Reference(ExampleMdsDevice)
* device = Reference(ExampleMdsDevice)
* occurrence.start = "2026-09-01T09:20:00+02:00"
