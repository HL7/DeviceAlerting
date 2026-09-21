Instance: PhysiologicalAlertExample
InstanceOf: DevicePhysiologicalAlert
Usage: #example
Title: "Physiological Alert Example - Apnea"
Description: "The monitor detected an apnea condition for the patient."
* status = #in-progress
* type = http://hl7.org/fhir/devicealert-type#physiological
* code = urn:iso:std:iso:11073:10101#199680 "MDC_EVT_APNEA"
* subject = Reference(ExamplePatient)
* device = Reference(ExampleRespRateMetric)
* occurrence.start = "2026-09-01T09:15:00+02:00"
* derivedFrom[0].observation = Reference(ExampleRespRateObservation)
