This Implementation Guide defines profiles on the FHIR [DeviceAlert]({{site.data.fhir.path}}devicealert.html) resource. Each alert is either about the subject being monitored or about the device itself, and either conveys the limit that was crossed or does not. Advisories, which announce a nominal change in state rather than an alarm, form a third group.

*(Draft. The profiles below are early and expected to change.)*

### Overview

The profiles are arranged along two axes: what the alert is about (patient or device, with advisories as a separate group), and whether it conveys the limit that was crossed. Each limit profile is derived from the corresponding alert type profile. Select a box to open the profile.

<div style="max-width: 830px; margin: 1em 0;">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 830 362" width="100%" font-family="Helvetica, Arial, sans-serif" role="img" aria-labelledby="po-t po-d">
<title id="po-t">Profile overview</title>
<desc id="po-d">Profile hierarchy: DeviceAlert at the top; below it the physiological, technical and advisory profiles; below the physiological and technical profiles their limit profiles. Each box links to the profile.</desc>
<g fill="#f5f5f5"><rect x="10" y="12" width="810" height="80" rx="6"/><rect x="10" y="135" width="810" height="86" rx="6"/><rect x="10" y="263" width="810" height="86" rx="6"/></g>
<g font-size="12" fill="#666666" font-style="italic"><text x="22" y="56">base resource</text><text x="22" y="182">alert type</text><text x="22" y="310">limit conveyed</text></g>
<g fill="none" stroke="#555555" stroke-width="1.2"><path d="M480,79 L480,112"/><path d="M250,112 L710,112"/><path d="M250,112 L250,145"/><path d="M480,112 L480,145"/><path d="M710,112 L710,145"/><path d="M250,211 L250,273"/><path d="M480,211 L480,273"/></g>
<a href="{{site.data.fhir.path}}devicealert.html" xlink:href="{{site.data.fhir.path}}devicealert.html">
<title>DeviceAlert (FHIR core resource)</title>
<rect x="380" y="25" width="200" height="54" rx="4" fill="#eeeeee" stroke="#777777" stroke-width="1.5"/>
<text x="480" y="48" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">DeviceAlert</text>
<text x="480" y="66" text-anchor="middle" font-size="11" fill="#555555">FHIR core resource</text>
</a>
<a href="StructureDefinition-device-physiological-alert.html" xlink:href="StructureDefinition-device-physiological-alert.html">
<title>Device Physiological Alert</title>
<rect x="150" y="145" width="200" height="66" rx="4" fill="#ffffff" stroke="#3b6ea8" stroke-width="1.5"/>
<text x="250" y="168" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">Physiological Alert</text>
<text x="250" y="186" text-anchor="middle" font-size="11" fill="#555555">type: physiological</text>
<text x="250" y="202" text-anchor="middle" font-size="11" fill="#555555">about the patient</text>
</a>
<a href="StructureDefinition-device-technical-alert.html" xlink:href="StructureDefinition-device-technical-alert.html">
<title>Device Technical Alert</title>
<rect x="380" y="145" width="200" height="66" rx="4" fill="#ffffff" stroke="#4d8a4d" stroke-width="1.5"/>
<text x="480" y="168" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">Technical Alert</text>
<text x="480" y="186" text-anchor="middle" font-size="11" fill="#555555">type: technical</text>
<text x="480" y="202" text-anchor="middle" font-size="11" fill="#555555">about the device</text>
</a>
<a href="StructureDefinition-device-advisory-alert.html" xlink:href="StructureDefinition-device-advisory-alert.html">
<title>Device Advisory Alert</title>
<rect x="610" y="145" width="200" height="66" rx="4" fill="#ffffff" stroke="#b07a1e" stroke-width="1.5"/>
<text x="710" y="168" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">Advisory Alert</text>
<text x="710" y="186" text-anchor="middle" font-size="11" fill="#555555">type: advisory</text>
<text x="710" y="202" text-anchor="middle" font-size="11" fill="#555555">about: not restricted</text>
</a>
<a href="StructureDefinition-device-physiological-limit-alert.html" xlink:href="StructureDefinition-device-physiological-limit-alert.html">
<title>Device Physiological Limit Alert</title>
<rect x="150" y="273" width="200" height="66" rx="4" fill="#ffffff" stroke="#3b6ea8" stroke-width="1.5"/>
<text x="250" y="296" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">Physiological Limit Alert</text>
<text x="250" y="314" text-anchor="middle" font-size="11" fill="#555555">derivedFrom 1..1, limit 1..1</text>
<text x="250" y="330" text-anchor="middle" font-size="11" fill="#555555">about the patient</text>
</a>
<a href="StructureDefinition-device-technical-limit-alert.html" xlink:href="StructureDefinition-device-technical-limit-alert.html">
<title>Device Technical Limit Alert</title>
<rect x="380" y="273" width="200" height="66" rx="4" fill="#ffffff" stroke="#4d8a4d" stroke-width="1.5"/>
<text x="480" y="296" text-anchor="middle" font-size="13" font-weight="bold" fill="#2a5d9f" text-decoration="underline">Technical Limit Alert</text>
<text x="480" y="314" text-anchor="middle" font-size="11" fill="#555555">derivedFrom 1..1, limit 1..1</text>
<text x="480" y="330" text-anchor="middle" font-size="11" fill="#555555">about the device</text>
</a>
</svg>
</div>

### Device Physiological Alert

[Device Physiological Alert](StructureDefinition-device-physiological-alert.html) describes an alert about the subject being monitored. The subject is a [Patient]({{site.data.fhir.path}}patient.html). The alert refers to the [Device]({{site.data.fhir.path}}device.html) or [DeviceMetric]({{site.data.fhir.path}}devicemetric.html) that detected the condition and to at least one [Observation]({{site.data.fhir.path}}observation.html) that triggered it, each in its own `derivedFrom` entry. Point-of-care devices following the [Point-of-Care Device IG](https://hl7.org/fhir/uv/pocd/) typically reference the DeviceMetric; personal health devices following the [Personal Health Device IG](https://hl7.org/fhir/uv/phd/), which do not use DeviceMetric, reference the Device.

Example: [Apnea](DeviceAlert-PhysiologicalAlertExample.html).

### Device Physiological Limit Alert

[Device Physiological Limit Alert](StructureDefinition-device-physiological-limit-alert.html) describes a physiological alert raised because a measured value crossed a configured limit. Unlike its parent, it has exactly one `derivedFrom` entry, which refers to the triggering observation and conveys the crossed limit in `derivedFrom.limit`.

Example: [Respiration rate above limit](DeviceAlert-PhysiologicalLimitAlertExample.html).

### Device Technical Alert

[Device Technical Alert](StructureDefinition-device-technical-alert.html) describes an alert about the device rather than the subject. The subject is a [Device]({{site.data.fhir.path}}device.html), and the alert refers to the [Device]({{site.data.fhir.path}}device.html) or [DeviceMetric]({{site.data.fhir.path}}devicemetric.html) that detected the condition. A technical alert can be raised at any level of the device hierarchy. Point-of-care devices following the [Point-of-Care Device IG](https://hl7.org/fhir/uv/pocd/) usually reference the MDS Device, the top level of the model; a VMD or Channel Device, or a DeviceMetric for an alert about a single measurement, is also possible. Personal health devices following the [Personal Health Device IG](https://hl7.org/fhir/uv/phd/) simply reference the Device.

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
