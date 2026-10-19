// Limit variant of a physiological alert: the alert carries the limit that was
// exceeded in derivedFrom.limit, in addition to the triggering observation.
Instance: PhysiologicalLimitAlertExample
InstanceOf: DevicePhysiologicalLimitAlert
Usage: #example
Title: "Physiological Alert Example - Respiration Rate Above High Limit"
Description: "The monitor detected that the respiration rate exceeded its configured high limit."
* status = #in-progress
* type = http://terminology.hl7.org/CodeSystem/devicealert-type#physiological
* code = urn:iso:std:iso:11073:10101#196650 "MDC_EVT_HI_GT_LIM"
* subject = Reference(ExamplePatient)
* device = Reference(ExampleRespRateMetric)
* occurrence.start = "2026-09-01T10:02:00+02:00"
* derivedFrom[0].observation = Reference(ExampleRespRateHighObservation)
* derivedFrom[0].limit.high = 30 '/min' "/min"
