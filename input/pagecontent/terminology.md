This page describes the code systems and value sets used by the profiles in this Implementation Guide, and the rules for their use.

*(Draft. Terminology decisions for this guide are still open in the work group.)*

### Code Systems

The examples in this guide use the following code systems:

| Code system | URI |
|---|---|---|
| ISO/IEEE 11073-10101 (MDC) | `urn:iso:std:iso:11073:10101` |
| [DeviceAlert Type](http://terminology.hl7.org/CodeSystem/devicealert-type) | `http://terminology.hl7.org/CodeSystem/devicealert-type` |
{:.grid}

### MDC Source / Code Pairs

An alert is only interpretable when two codes are read together: the code of the alert itself (`DeviceAlert.code`) and the code of the source that detected it (the `type` of the [Device]({{site.data.fhir.path}}device.html) or [DeviceMetric]({{site.data.fhir.path}}devicemetric.html) referenced in `DeviceAlert.device`). A generic alert code such as `MDC_EVT_HI_GT_LIM` ("high limit exceeded") carries its meaning only together with the source, for example `MDC_RESP_RATE`.

The table below lists such pairs per scenario. **It is illustrative and not normative.** It currently contains the pairs used in the examples of this guide.

| Scenario | Alert type | Source (`DeviceAlert.device` → `type`) | Alert code (`DeviceAlert.code`) | Triggering observation (`derivedFrom.observation` → `code`) | Example |
|---|---|---|---|---|---|
| Apnea | physiological | `151562` MDC_RESP_RATE (DeviceMetric) | `199680` MDC_EVT_APNEA | `151562` MDC_RESP_RATE | [Apnea](DeviceAlert-PhysiologicalAlertExample.html) |
| Respiration rate above high limit | physiological | `151562` MDC_RESP_RATE (DeviceMetric) | `196650` MDC_EVT_HI_GT_LIM | `151562` MDC_RESP_RATE | [Respiration rate above limit](DeviceAlert-PhysiologicalLimitAlertExample.html) |
| Communication lost | technical | `69721` MDC_DEV_ANALY_RESP_RATE_MDS (Device) | `196748` MDC_EVT_COMM_LOST | – | [Communication lost](DeviceAlert-TechnicalAlertExample.html) |
| Battery charge below low limit | technical | `69721` MDC_DEV_ANALY_RESP_RATE_MDS (Device) | `196802` MDC_EVT_BATT_LO | `67996` MDC_ATTR_VAL_BATT_CHARGE | [Battery low](DeviceAlert-TechnicalLimitAlertExample.html) |
| Battery needs replacement | advisory | `69721` MDC_DEV_ANALY_RESP_RATE_MDS (Device) | `203286` MDC_EVT_ADVIS_BATT_REPLACE | – | [Replace battery](DeviceAlert-AdvisoryAlertExample.html) |
{:.grid}

All codes are from ISO/IEEE 11073-10101 (`urn:iso:std:iso:11073:10101`).
