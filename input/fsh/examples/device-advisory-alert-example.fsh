// Advisory: a nominal condition announced ahead of time, not an alarm. No measured
// value or limit is involved, and no location is required.
Instance: AdvisoryAlertExample
InstanceOf: DeviceAdvisoryAlert
Usage: #example
Title: "Advisory Alert Example - Replace Battery"
Description: "The device advises that its battery needs to be replaced, because a full charge is now too small a fraction of the original capacity."
* status = #in-progress
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#advisory
* code = urn:iso:std:iso:11073:10101#203286 "MDC_EVT_ADVIS_BATT_REPLACE"
* subject = Reference(ExampleMdsDevice)
* device = Reference(ExampleMdsDevice)
* occurrence.start = "2026-09-01T08:00:00+02:00"
