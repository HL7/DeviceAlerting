// MDC codes below are base terms, verified against MDC version 2024-12-05.
// Note: the MDC expansion contains derived terms sharing the same display
// (e.g. 151554 MDC_RESP_RATE, derived from base term 2::20480 MDC_RESP).
// The base term is used throughout these examples.

Instance: ExamplePatient
InstanceOf: Patient
Usage: #example
Title: "Example Patient"
Description: "Minimal patient, used as the subject of the physiological alert example."
* active = true

Instance: ExampleMdsDevice
InstanceOf: Device
Usage: #example
Title: "Example MDS Device"
Description: "Minimal device representing the medical device system (MDS) raising the alerts."
* status = #active

Instance: ExampleRespRateMetric
InstanceOf: DeviceMetric
Usage: #example
Title: "Example Respiration Rate Metric"
Description: "Minimal DeviceMetric for respiration rate, the source of the physiological alert."
* status = #active
* category = http://terminology.hl7.org/CodeSystem/metric-category#measurement
* type = urn:iso:std:iso:11073:10101#151562 "MDC_RESP_RATE"
* device = Reference(ExampleMdsDevice)

Instance: ExampleRespRateObservation
InstanceOf: Observation
Usage: #example
Title: "Example Respiration Rate Observation"
Description: "Minimal observation whose value triggered the physiological alert."
* status = #final
* code = urn:iso:std:iso:11073:10101#151562 "MDC_RESP_RATE"
* subject = Reference(ExamplePatient)
* device = Reference(ExampleRespRateMetric)
* effectiveDateTime = "2026-09-01T09:15:00+02:00"
* valueQuantity = 0 '/min' "/min"
