This Implementation Guide defines profiles on the FHIR [DeviceAlert]({{site.data.fhir.path}}devicealert.html) resource. Each alert is either about the subject being monitored or about the device itself, and either conveys the limit that was crossed or does not. Advisories, which announce a nominal change in state rather than an alarm, form a third group.

*(Draft. The profiles below are early and expected to change.)*

### Overview

| Profile | Parent | Alert is about | Limit conveyed |
|---|---|---|---|
| [Device Physiological Alert](StructureDefinition-device-physiological-alert.html) | [DeviceAlert]({{site.data.fhir.path}}devicealert.html) | the patient | no |
| [Device Physiological Limit Alert](StructureDefinition-device-physiological-limit-alert.html) | Device Physiological Alert | the patient | yes |
| [Device Technical Alert](StructureDefinition-device-technical-alert.html) | [DeviceAlert]({{site.data.fhir.path}}devicealert.html) | the device | no |
| [Device Technical Limit Alert](StructureDefinition-device-technical-limit-alert.html) | Device Technical Alert | the device | yes |
| [Device Advisory Alert](StructureDefinition-device-advisory-alert.html) | [DeviceAlert]({{site.data.fhir.path}}devicealert.html) | not restricted | no |
{:.grid}

### Device Physiological Alert

[Device Physiological Alert](StructureDefinition-device-physiological-alert.html) describes an alert about the subject being monitored. The subject is a [Patient]({{site.data.fhir.path}}patient.html). The alert refers to the [DeviceMetric]({{site.data.fhir.path}}devicemetric.html) that detected the condition and to at least one [Observation]({{site.data.fhir.path}}observation.html) that triggered it.

Example: [Apnea](DeviceAlert-PhysiologicalAlertExample.html).

### Device Physiological Limit Alert

[Device Physiological Limit Alert](StructureDefinition-device-physiological-limit-alert.html) describes a physiological alert raised because a measured value crossed a configured limit. It refers to exactly one triggering observation and conveys the crossed limit in `derivedFrom.limit`.

Example: [Respiration rate above limit](DeviceAlert-PhysiologicalLimitAlertExample.html).

### Device Technical Alert

[Device Technical Alert](StructureDefinition-device-technical-alert.html) describes an alert about the device rather than the subject. The subject is a [Device]({{site.data.fhir.path}}device.html), and the alert refers to the device that detected the condition.

Example: [Communication lost](DeviceAlert-TechnicalAlertExample.html).

### Device Technical Limit Alert

[Device Technical Limit Alert](StructureDefinition-device-technical-limit-alert.html) describes a technical alert raised because a device-internal value crossed a configured limit, for example a battery charge falling below its threshold. Because `derivedFrom.observation` is mandatory in the base resource, the alert conveys the underlying observation as well as the limit.

Example: [Battery low](DeviceAlert-TechnicalLimitAlertExample.html).

### Device Advisory Alert

[Device Advisory Alert](StructureDefinition-device-advisory-alert.html) describes an advisory: an alert about a nominal change in state or condition that is not an alarm, for example a battery that will need to be replaced. An advisory may be about a patient, a device, a location or a group, so the subject is not restricted. The only constraint is `type` = `advisory`.

Example: [Replace battery](DeviceAlert-AdvisoryAlertExample.html).

### Device Hierarchy

The examples follow the containment tree of the [Point-of-Care Device IG](https://hl7.org/fhir/uv/pocd/): an MDS Device, a VMD Device, a Channel Device and a DeviceMetric, linked through `Device.parent` and `DeviceMetric.device`. Personal health devices following the [Personal Health Device IG](https://hl7.org/fhir/uv/phd/) use their own device model without the MDS / VMD / Channel tree. The profiles in this guide do not depend on either guide.

### Must Support

For the profiles listed above, when `mustSupport` is set to true on data elements (flagged with an **S** in the table view), this shall be interpreted as follows:

* Data sources shall be capable of populating the element in a resource instance if the data is available and permissions allow.
* Data consumers shall be capable of consuming the element from the resource instance if the data is relevant to their business case.

This definition is taken over from the [Point-of-Care Device IG](https://build.fhir.org/ig/HL7/uv-pocd/en/profiles.html#must-support), so that a system implementing both guides applies one meaning of Must Support.

The following elements are flagged as Must Support in all profiles: `status`, `type`, `priority`, `code`, `subject`, `occurrence`, `device`, `acknowledged`, `location`, `derivedFrom` and `derivedFrom.observation`. The limit profiles additionally flag `derivedFrom.limit`.

The complete, generated list of all artifacts defined in this guide is available in the [Artifact List](artifacts.html).
