### Device Alerting Implementation Guide

This Implementation Guide describes how alert information originating from medical
and health devices is represented and exchanged using FHIR, based on the
[DeviceAlert]({{site.data.fhir.path}}devicealert.html) resource introduced in FHIR R6.


### Scope

This guide provides guidance on the FHIR representation of device-sourced alerting and on
its translation to other paradigms. Its scope covers:

* representation of device-sourced alerts, including alarms and advisories;
* requirements on the use of the DeviceAlert resource that are too detailed for FHIR core,
  in line with the standards this guide references;
* bridging between FHIR and other paradigms, such as the IHE Alert Communication
  Management (ACM) profile;
* both acute / in-hospital and home / out-of-hospital settings.

This guide is **not** intended for real-time notification or clinical workflows.

### Relationship to other guides

This guide complements the Point-of-Care Device (PoCD) Implementation Guide, which conveys
measurements and supporting data from acute care point-of-care devices, and the Personal
Health Device (PHD) Implementation Guide, which conveys measurements, supporting and
alerting data from personal health devices. This guide adds the conveyance and
dissemination of alerting data.

### Status

This is an early draft. Its content is incomplete and expected to change
substantially. It is not suitable for implementation.

### Project

This guide is produced by HL7 International / Devices under
[PSS-2005](https://jira.hl7.org/browse/PSS-2005).
