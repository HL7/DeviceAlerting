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
Description: "The medical device system (MDS), top of the device hierarchy and subject of the technical alerts."
* status = #active
* type = urn:iso:std:iso:11073:10101#69721 "MDC_DEV_ANALY_RESP_RATE_MDS"

Instance: ExampleVmdDevice
InstanceOf: Device
Usage: #example
Title: "Example VMD Device"
Description: "The virtual medical device (VMD), a logical part of the MDS."
* status = #active
* type = urn:iso:std:iso:11073:10101#69722 "MDC_DEV_ANALY_RESP_RATE_VMD"
* parent = Reference(ExampleMdsDevice)

Instance: ExampleChannelDevice
InstanceOf: Device
Usage: #example
Title: "Example Channel Device"
Description: "The channel, a logical part of the VMD and the parent of the device metric."
* status = #active
* type = urn:iso:std:iso:11073:10101#69723 "MDC_DEV_ANALY_RESP_RATE_CHAN"
* parent = Reference(ExampleVmdDevice)

Instance: ExampleRespRateMetric
InstanceOf: DeviceMetric
Usage: #example
Title: "Example Respiration Rate Metric"
Description: "Minimal DeviceMetric for respiration rate, the source of the physiological alert."
* status = #active
* category = http://terminology.hl7.org/CodeSystem/metric-category#measurement
* type = urn:iso:std:iso:11073:10101#151562 "MDC_RESP_RATE"
* device = Reference(ExampleChannelDevice)

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

Instance: ExampleRespRateHighObservation
InstanceOf: Observation
Usage: #example
Title: "Example Respiration Rate Observation Above Limit"
Description: "Minimal observation whose value exceeded the configured high limit, triggering the limit alert."
* status = #final
* code = urn:iso:std:iso:11073:10101#151562 "MDC_RESP_RATE"
* subject = Reference(ExamplePatient)
* device = Reference(ExampleRespRateMetric)
* effectiveDateTime = "2026-09-01T10:02:00+02:00"
* valueQuantity = 34 '/min' "/min"

Instance: ExampleBatteryChargeObservation
InstanceOf: Observation
Usage: #example
Title: "Example Battery Charge Observation"
Description: "The battery level of the MDS, whose value fell below the configured low limit and triggered the technical limit alert."
* status = #final
* code = urn:iso:std:iso:11073:10101#67996 "MDC_ATTR_VAL_BATT_CHARGE"
* subject = Reference(ExampleMdsDevice)
* device = Reference(ExampleMdsDevice)
* effectiveDateTime = "2026-09-01T09:20:00+02:00"
* valueQuantity = 12 '%' "%"
