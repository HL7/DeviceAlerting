// Must Support pattern, following the Point-of-Care Device IG (PoCD):
// - MS on the top-level elements that carry the alert content, including the
//   elements that are mandatory in the base resource or in the profile.
// - MS on the mandatory child of a backbone element (derivedFrom.observation),
//   not on datatype sub-elements (coding.system, period.start, ...).
// - The meaning of MS is defined once, in prose, on the Profiles page.
// Each concrete profile applies the rules itself, as PoCD does; the limit
// profiles inherit them from their parent and add derivedFrom.limit.
RuleSet: DeviceAlertMustSupport
* status MS
* type MS
* priority MS
* code MS
* subject MS
* occurrence MS
* device MS
* acknowledged MS
* location MS
* derivedFrom MS
* derivedFrom.observation MS

RuleSet: DeviceAlertLimitMustSupport
* derivedFrom.limit MS
