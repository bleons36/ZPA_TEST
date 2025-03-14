# Changelog

## 3.0.5 (November, 17 2023)

### Notes

- Release date: **(November, 17 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #388](https://github.com/zscaler/terraform-provider-zpa/pull/388) - Updated provider to zscaler-sdk-go v2.1.6 to support ZPA SCIM Group SortOrder and SortBy search criteria option

## 3.0.4 (November, 6 2023)

### Notes

- Release date: **(November, 6 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #385](https://github.com/zscaler/terraform-provider-zpa/pull/385) - Fixed `microtenant_id` attribute for all access policy types.
  ⚠️ **WARNING:**: The attribute ``microtenant_id`` is optional and requires the microtenant license and feature flag enabled for the respective tenant. The provider also supports the microtenant ID configuration via the environment variable `ZPA_MICROTENANT_ID` which is the recommended method.
- [PR #383](https://github.com/zscaler/terraform-provider-zpa/pull/383) - Fixed issues with hard-coded authentication within the provider block.

## 3.0.3 (October, 27 2023)

### Notes

- Release date: **(October, 27 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #375](https://github.com/zscaler/terraform-provider-zpa/pull/375) - Fixed drift issues in ``zpa_application_segment_pra`` and ``zpa_application_segment_inspection`` when setting up ``apps_config`` options.
- [PR #375](https://github.com/zscaler/terraform-provider-zpa/pull/375) - Upgrade to [Zscaler-SDK-GO v2.1.3](https://github.com/zscaler/zscaler-sdk-go/releases/tag/v2.1.3). The upgrade allows searches for resources in which the name include 1 or more spaces.
- [PR #380](https://github.com/zscaler/terraform-provider-zpa/pull/380) - Fixed provider authentication to accept `ZPA_CLOUD` via environment variables.
- [PR #381](https://github.com/zscaler/terraform-provider-zpa/pull/381) - Included and fixed additional acceptance test cases for several resources and datasources

## 3.0.2 (September, 30 2023)

### Notes

- Release date: **(September, 30 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #374](https://github.com/zscaler/terraform-provider-zpa/pull/374) - Resource `zpa_lss_config_controller` now supports ability to configure granular access policies via the embbeded `policy_type` `SIEM_POLICY`.

### Fixes

- [PR #372](https://github.com/zscaler/terraform-provider-zpa/pull/372) - Provider HTTP Header now includes enhanced ``User-Agent`` information for troubleshooting assistance.
  - i.e ``User-Agent: (darwin arm64) Terraform/1.5.5 Provider/3.0.2 CustomerID/xxxxxxxxxxxxxxx``

## 3.0.1-beta (September, 21 2023)

### Notes

- Release date: **(September, 21 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #369](https://github.com/zscaler/terraform-provider-zpa/pull/369) - Added fix to resource `zpa_policy_access_rule_reorder` to support multiple policy types. The reorder operation is now supported for the following policy types:
  - ``ACCESS_POLICY or GLOBAL_POLICY``
  - ``TIMEOUT_POLICY or REAUTH_POLICY``
  - ``BYPASS_POLICY or CLIENT_FORWARDING_POLICY``
  - ``INSPECTION_POLICY``
  - ``ISOLATION_POLICY``
  - ``CREDENTIAL_POLICY``
  - ``CAPABILITIES_POLICY``
  - ``CLIENTLESS_SESSION_PROTECTION_POLICY``

- [PR #371](https://github.com/zscaler/terraform-provider-zpa/pull/371) - Fixed ``object_type`` validation for all supported policy types.

## 3.0.0-beta (September, 18 2023)

### Notes

- Release date: **(September, 18 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #355](https://github.com/zscaler/terraform-provider-zpa/pull/355) - Introduced the new resource and datasource `zpa_microtenant_controller`
- [PR #355](https://github.com/zscaler/terraform-provider-zpa/pull/355) - Added support to the new Microtenant Controller feature to the following resources:
  - `zpa_app_connector_controller`,, `zpa_app_connector_group`, `zpa_application_segment`, `zpa_application_segment_browser_access`, `zpa_application_segment_inspection`, `zpa_application_segment_pra`, `zpa_application_server`, `zpa_policy_type`, `zpa_policy_access_rule`, `zpa_policy_access_forwarding_rule`, `zpa_policy_access_timeout_rule`, `zpa_policy_access_inspection_rule`, `zpa_policy_access_isolation_rule`, `zpa_segment_group`, `zpa_server_group`, `zpa_provisioning_key`, `zpa_machine_group`, `zpa_service_edge_group`, `zpa_service_edge_controller`

⚠️ **WARNING:**: The new attribute ``microtenant_id`` is optional. The provider also supports the microtenant ID configuration via the environment variable `ZPA_MICROTENANT_ID` which is the recommended method.

⚠️ **WARNING:**: This feature is in limited availability and requires additional license. To learn more, contact your local account team.

- [PR #356](https://github.com/zscaler/terraform-provider-zpa/pull/356) - Added support to the following new ZPA Cloud Browser Isolation resources and datasources:

- Resources
  - `zpa_cloud_browser_isolation_banner` - Cloud Browser Isolation Banner Controller
  - `zpa_cloud_browser_isolation_certificate` - Cloud Browser Isolation Certificate Controller
  - `zpa_cloud_browser_isolation_external_profile` - Cloud Browser Isolation External Profile Controller

- Data Sources
  - `zpa_cloud_browser_isolation_banner` - Cloud Browser Isolation Banner Controller
  - `zpa_cloud_browser_isolation_certificate` - Cloud Browser Isolation Certificate Controller
  - `zpa_cloud_browser_isolation_external_profile` - Cloud Browser Isolation External Profile Controller
  - `zpa_cloud_browser_isolation_region` - Cloud Browser Isolation Regions
  - `zpa_cloud_browser_isolation_zpa_profile` - Cloud Browser Isolation ZPA Profile

  ⚠️ **WARNING:**: Cloud Browser Isolation (CBI) is a licensed feature flag. Please contact your local account team for details.

- [PR #363](https://github.com/zscaler/terraform-provider-zpa/pull/363) - Added support for `COUNTRY_CODE` object type within the `zpa_policy_access_rule` resource. The provider validates the use of proper 2 letter country codes [ISO3166 By Alpha2Code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) - Issue [#361](https://github.com/zscaler/terraform-provider-zpa/issues/361)

- [PR #366](https://github.com/zscaler/terraform-provider-zpa/pull/366) - Added ISO3166 Alpha2Code for ``country_code`` validation on `zpa_app_connector_groups` and `zpa_service_edge_group` resources

## 2.82.4-beta (August, 18 2023) - Beta

### Notes

- Release date: **(August, 18 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #348](https://github.com/zscaler/terraform-provider-zpa/pull/348)

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.82.3-beta (August, 18 2023) - Beta

### Notes

- Release date: **(August, 18 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #347](https://github.com/zscaler/terraform-provider-zpa/pull/347)

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.82.2-beta (August, 17 2023) - Beta

### Notes

- Release date: **(August, 17 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #347](https://github.com/zscaler/terraform-provider-zpa/pull/347)

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.82.2-beta (August, 17 2023) - Beta

### Notes

- Release date: **(August, 17 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #345](https://github.com/zscaler/terraform-provider-zpa/pull/345)
  1. ``zpa_policy_access_rule_reorder`` Added check to prevent ``order <= 0``
  2. ``zpa_policy_access_rule_reorder`` Added check to prevent non-contigous (gaps) in rule order numbers
  3. ``zpa_policy_access_rule_reorder`` Added check to prevent rule order number to be greater than the total number of rules being configured.

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.82.1-beta (August, 16 2023) - Beta

### Notes

- Release date: **(August, 16 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #344](https://github.com/zscaler/terraform-provider-zpa/pull/344)
  1. Implemented a new resource ``zpa_policy_access_rule_reorder`` to support Access policy rule reorder in a more efficient way.

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.82.0-beta (August, 13 2023) - Beta

### Notes

- Release date: **(August, 13 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #340](https://github.com/zscaler/terraform-provider-zpa/pull/340)
  1. Implemented a new resource ``zpa_policy_access_rule_reorder`` to support Access policy rule reorder in a more efficient way.

⚠️ **WARNING:**: The attribute ``rule_order`` is now deprecated in favor of this resource for all ZPA policy types.

## 2.81.0 (August, 1 2023)

### Notes

- Release date: **(August, 1 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #334](https://github.com/zscaler/terraform-provider-zpa/pull/326) - Added support to ZPA ``GOVUS`` environment. Issue [#333](https://github.com/zscaler/terraform-provider-zpa/issues/333)

## 2.8.0 (July, 5 2023)

### Notes

- Release date: **(July, 5 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #325](https://github.com/zscaler/terraform-provider-zpa/pull/325) - Added new attribute ``waf_disabled`` to resource ``zpa_app_connector_group``
- [PR #326](https://github.com/zscaler/terraform-provider-zpa/pull/326) - Added support to ZPA ``QA`` environment

### Fixes

- [PR #319](https://github.com/zscaler/terraform-provider-zpa/pull/319) - Fixed links to Zenith Community demo videos in the documentation
- [PR #321](https://github.com/zscaler/terraform-provider-zpa/pull/321) - Fixed resource ``zpa_server_group``due to panic when set attribute ``dynamic_discovery`` to false.
- [PR #323](https://github.com/zscaler/terraform-provider-zpa/pull/323) - Fixed attribute ``server_groups`` in all ``zpa_application_segment`` resources due to server group ID reorder, which caused drift behavior. Issue [#322](https://github.com/zscaler/terraform-provider-zpa/issues/322)

## 2.7.9 (June, 10 2023)

### Notes

- Release date: **(June, 10 2023)**
- Supported Terraform version: **v1.x**

### Fixes

- Updated to Zscaler-SDK-GO v1.5.5. The update improves search mechanisms for ZPA resources, to ensure streamline upstream GET API requests and responses using ``search`` parameter. Notice that not all current API endpoints support the search parameter, in which case, all resources will be returned.

## 2.7.8 (June, 3 2023)

### Notes

- Release date: **(June, 3 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #311](https://github.com/zscaler/terraform-provider-zpa/pull/311) Fixed ZPA resource ``Service Edge Group`` and ``Service Edge Controller`` Struct to support attribute ``publish_ips``.
- [PR #314](https://github.com/zscaler/terraform-provider-zpa/pull/314) Fixed ``rhs`` attribute within the ``GetPolicyConditionsSchema``function to prevent invalid new value inconsistency issue.

## 2.7.7 (May, 23 2023)

### Notes

- Release date: **(May, 23 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #309](https://github.com/zscaler/terraform-provider-zpa/pull/309) Updated provider to Zscaler SDK GO v1.5.2. The update added exception handling within the ZPA API Client to deal with simultaneous DB requests, which were affecting the ZPA Policy Access rule order creation.

⚠️ **WARNING:** Due to API restrictions, we recommend to limit the number of requests to ONE, when configuring the following resources:

- ``zpa_policy_access_rule``
- ``zpa_policy_inspection_rule``
- ``zpa_policy_timeout_rule``
- ``zpa_policy_forwarding_rule``
- ``zpa_policy_isolation_rule``
  - Internal References:
    - [ET-53585](https://jira.corp.zscaler.com/browse/ET-53585)
    - [ET-48860](https://confluence.corp.zscaler.com/display/ET/ET-48860+incorrect+rules+order)

Terraform uses goroutines to speed up deployment, but the number of parallel
operations it launches exceeds [what is recommended](https://help.zscaler.com/zpa/about-rate-limiting).
When configuring ZPA Policies we recommend to limit the number of concurrent API calls to ONE. This limit ensures that there is no performance impact during the provisioning of large Terraform configurations.

This recommendation applies to the following resources:

- ``zpa_policy_access_rule``
- ``zpa_policy_inspection_rule``
- ``zpa_policy_timeout_rule``
- ``zpa_policy_forwarding_rule``
- ``zpa_policy_isolation_rule``

In order to accomplish this, make sure you set the
[parallelism](https://www.terraform.io/cli/commands/apply#parallelism-n) value at or
below this limit to prevent performance impacts.

## 2.7.6 (May, 20 2023)

### Notes

- Release date: **(May, 20 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #306](https://github.com/zscaler/terraform-provider-zpa/pull/306) Fix resource ``zpa_policy_forwarding_rule`` to ensure updates are executed during resource rule modifications.
- [PR #307](https://github.com/zscaler/terraform-provider-zpa/pull/307) Fix resource ``zpa_policy_timeout_rule`` to ensure updates are executed during resource rule modifications.
- [PR #308](https://github.com/zscaler/terraform-provider-zpa/pull/308) Fix the following access rule resources to ensure updates are executed during resource rule modifications:
  - ``zpa_policy_inspection_rule``
  - ``zpa_policy_isolation_rule``

## 2.7.5 (May, 18 2023)

### Notes

- Release date: **(May, 18 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #304](https://github.com/zscaler/terraform-provider-zpa/pull/304) Fix attribute ``select_connector_close_to_app`` by setting schema attribute to ``ForceNew`` across all application segments to ensure proper resource update when UDP port is set and ``select``_connector_close_to_app`` is switched to false.
## 2.7.4 (May, 13 2023)

### Notes

- Release date: **(May, 13 2023)**
- Supported Terraform version: **v1.x**

### Enhancements

- [PR #301](https://github.com/zscaler/terraform-provider-zpa/pull/301) Improve scim values searching

## 2.7.3 (May, 11 2023)

### Notes

- Release date: **(May, 11 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #298](https://github.com/zscaler/terraform-provider-zpa/pull/285) Fixed issue with empty IDs in the resource ``zpa_service_edge_groups``
- [PR #298](https://github.com/zscaler/terraform-provider-zpa/pull/285) Fix Service Edge Group Trusted Networks  for resource ``zpa_service_edge_groups``

## 2.7.2 (April, 28 2023)

### Notes

- Release date: **(April, 28 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #285](https://github.com/zscaler/terraform-provider-zpa/pull/285) Allow empty server group attribute in ``server_group`` attribute within an application segment
- [PR #291](https://github.com/zscaler/terraform-provider-zpa/pull/291) Added function to support detaching objects from all policy types prior to destroy operation.

### Enhacements

- [PR #292](https://github.com/zscaler/terraform-provider-zpa/pull/292) Added validation to application segments on attributes ``select_closest_app_connector`` to ensure no UDP port configuration is submitted. By default only TCP ports are supported when this attribute is set to ``true``.

## 2.7.1 (April, 11 2023)

### Notes

- Release date: **(April, 11 2023)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #279](https://github.com/zscaler/terraform-provider-zpa/pull/279) Update to Zscaler-SDK-GO 1.4.0 to support long Terraform runs and improve exponential backoff mechanism.
- [PR #280](https://github.com/zscaler/terraform-provider-zpa/pull/280) Added function to support detaching objects from all policy types prior to destroy operation.
- [PR #281](https://github.com/zscaler/terraform-provider-zpa/pull/281) Fixed browser access acceptance test to prevent port overlap and lingering resources
- [PR #285](https://github.com/zscaler/terraform-provider-zpa/pull/285) Make ``server_group`` attribute in the application segment optional to support UI behavior Issue[#283](https://github.com/zscaler/terraform-provider-zpa/issues/283)

⚠️ **WARNING:** In order to improve performance during long long Terraform runs involving ``zpa_application_segment`` resource, the Provider no longer performs pre-check on port overlaps. For this reason, we advise that Terraform configuration is checked properly during coding to ensure application segments with the same domain and ports are not conflicting. The port overlap pre-check remains in place for all other application segment types.

## 2.7.0 (March, 23 2023)

### Notes

- Release date: **(March, 23 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #272](https://github.com/zscaler/terraform-provider-zpa/pull/272) The ZPA Terraform Provider API Client, will now support long runs, that exceeds the 3600 seconds token validity. Terraform will automatically request a new API bearer token at that time in order to continue the resource provisioning. This enhacement will prevent long pipeline runs from being interrupted.

- [PR #272](https://github.com/zscaler/terraform-provider-zpa/pull/272) Update provider to Zscaler-SDK-GO v1.3.0

- [PR #272](https://github.com/zscaler/terraform-provider-zpa/pull/272) The SDK now supports authentication to ZPA DEV environment.

### Bug Fix

- [PR #271](https://github.com/zscaler/terraform-provider-zpa/pull/271) Added deprecate message to ``zpa_segment_group`` under the following attributes:
  - ``policy_migrated``: "The `policy_migrated` field is now deprecated for the resource `zpa_segment_group`, please remove this attribute to prevent configuration drifts"
  - ``tcp_keep_alive_enabled``: "The `tcp_keep_alive_enabled` field is now deprecated for the resource `zpa_segment_group`, please replace all uses of this within the `zpa_application_segment`resources with the attribute `tcp_keep_alive`".

  Both the above attributes can be safely removed without impact to production configuration; however, they are still supported for backwards compatibity purposes. [#270](https://github.com/zscaler/terraform-provider-zpa/issues/270)

## 2.6.6 (March, 20 2023)

### Notes

- Release date: **(March, 20 2023)**
- Supported Terraform version: **v1.x**

### Bug Fix

- [PR #268](https://github.com/zscaler/terraform-provider-zpa/pull/268) Fixed provider crashing when flattening IDP controller user metadata function Issue [#267](https://github.com/zscaler/terraform-provider-zpa/issues/267)

- [PR #268](https://github.com/zscaler/terraform-provider-zpa/pull/268) Added new ZPA IDP Controller attributes to data source. The following new attributes have been added:
  - ``login_hint``
  - ``force_auth``
  - ``enable_arbitrary_auth_domains``

## 2.6.5 (March, 19 2023)

### Notes

- Release date: **(March, 19 2023)**
- Supported Terraform version: **v1.x**

### Bug Fix

- [PR #262](https://github.com/zscaler/terraform-provider-zpa/pull/262) SCIM Group Search Pagination Issue affecting the following resource:
  - ``zpa_scim_groups``

## 2.6.5 (March, 19 2023)

### Notes

- Release date: **(March, 19 2023)**
- Supported Terraform version: **v1.x**

### Bug Fix

- [PR #262](https://github.com/zscaler/terraform-provider-zpa/pull/262) SCIM Group Search Pagination Issue affecting the following resource:
  - ``zpa_scim_groups``

## 2.6.4 (March, 16 2023)

### Notes

- Release date: **(March, 16 2023)**
- Supported Terraform version: **v1.x**

### Bug Fix

- [PR #263](https://github.com/zscaler/terraform-provider-zpa/pull/263) (fix) Added missing new object_type ``PLATFORM`` validation for access policy resources

## 2.6.3 (March, 7 2023)

### Notes

- Release date: **(March, 7 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #257](https://github.com/zscaler/terraform-provider-zpa/pull/257) Added the new ZPA Application Segment attributes for the following resources:
  - ``zpa_application_segment``, ``zpa_application_segment_browser_access``, ``zpa_application_segment_inspection``, ``zpa_application_segment_pra``
    - ``tcp_keep_alive``
    - ``is_incomplete_dr_config``
    - ``use_in_dr_mode``
    - ``select_connector_close_to_app``

  - ``zpa_app_connector_group``
    - ``use_in_dr_mode``

## 2.6.2 (March, 1 2023)

### Notes

- Release date: **(March, 1 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #251](https://github.com/zscaler/terraform-provider-zpa/pull/251) - Added new action ``REQUIRE_APPROVAL`` to ``zpa_policy_access_rule`` - [Issue [#250](https://github.com/zscaler/terraform-provider-zpa/issues/250)]

## 2.6.1 (February, 15 2023)

### Notes

- Release date: **(February, 15 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #242](https://github.com/zscaler/terraform-provider-zpa/pull/242) - Added new data source and resources below:
  - ``zpa_isolation_profile`` - This data source gets all isolation profiles for the specified customer. The Isolation Profile ID can then be referenced in a ``zpa_policy_isolation_rule`` when the ``action`` is set to ``ISOLATE``
  - ``zpa_policy_isolation_rule`` - This resource, creates an Isolation Rule. Notice that in order to create an isolation policy the ZPA tenant must be licensed accordingly. ``zpa_policy_isolation_rule`` when the ``action`` is set to ``ISOLATE``

### Bug Fix

- [PR #244](https://github.com/zscaler/terraform-provider-zpa/pull/244) - Fixed ``zpa_server_groups`` resource ``servers`` attribute to support typeSet instead of typeList.
- [PR #244](https://github.com/zscaler/terraform-provider-zpa/pull/244) - Fixed ``zpa_app_connector_group`` resource ``connectors`` attribute to support typeSet instead of typeList.

## 2.6.0 (February, 15 2023)

### Notes

- Release date: **(February, 15 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #242](https://github.com/zscaler/terraform-provider-zpa/pull/242) - Added new data source and resources below:
  - ``zpa_isolation_profile`` - This data source gets all isolation profiles for the specified customer. The Isolation Profile ID can then be referenced in a ``zpa_policy_isolation_rule`` when the ``action`` is set to ``ISOLATE``
  - ``zpa_policy_isolation_rule`` - This resource, creates an Isolation Rule. Notice that in order to create an isolation policy the ZPA tenant must be licensed accordingly. ``zpa_policy_isolation_rule`` when the ``action`` is set to ``ISOLATE``

### Bug Fix

- [PR #244](https://github.com/zscaler/terraform-provider-zpa/pull/244) - Fixed ``zpa_server_groups`` resource ``servers`` attribute to support typeSet instead of typeList.
- [PR #244](https://github.com/zscaler/terraform-provider-zpa/pull/244) - Fixed ``zpa_app_connector_group`` resource ``connectors`` attribute to support typeSet instead of typeList.

## 2.5.5 (January, 24 2023)

### Notes

- Release date: **(January, 24 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #238](https://github.com/zscaler/terraform-provider-zpa/pull/238) - Added new log_type (``zpn_pbroker_comprehensive_stats``) attribute to ``zpa_lss_config_log_type_formats`` and ``zpa_lss_config_controller``.

## 2.5.4 (January, 16 2023)

### Notes

- Release date: **(January, 16 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #232](https://github.com/zscaler/terraform-provider-zpa/pull/232) - Added new ZPA Inspection control parameters

  - ZPA Inspection Profile: ``web_socket_controls``
  - ZPA Custom Inspection Control:
    - ``control_type``: The following values are supported:
      - ``WEBSOCKET_PREDEFINED``, ``WEBSOCKET_CUSTOM``, ``ZSCALER``, ``CUSTOM``, ``PREDEFINED``

    - ``protocol_type``: The following values are supported:
      - ``HTTP``, ``WEBSOCKET_CUSTOM``, ``ZSCALER``, ``CUSTOM``, ``PREDEFINED``

### Fixes

- [PR #234](https://github.com/zscaler/terraform-provider-zpa/pull/234) - Removed Segment Group detachment function, so it can use the new ``force_delete`` parameter when removing application segments from a segment group.

## 2.5.3 (January, 2 2023)

### Notes

- Release date: **(January, 2 2023)**
- Supported Terraform version: **v1.x**

### Enhacements

- [PR #224](https://github.com/zscaler/terraform-provider-zpa/pull/224) Implemented longitude/latitude math function validation for more accurancy when configuring ``zpa_app_connector_group`` resources.

## 2.5.2 (December, 02 2022)

### Notes

- Release date: **(December, 02 2022)**
- Supported Terraform version: **v1.x**

### Bug Fix

- [PR #223](https://github.com/zscaler/terraform-provider-zpa/pull/223) Fixed pagination issue with ZPA endpoints

## 2.5.1 (November, 30 2022)

### Notes

- Release date: **(November, 30 2022)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #219](https://github.com/zscaler/terraform-provider-zia/pull/219) Added ForceNew helper to ``zpa_policy_timeout_rule`` parameters ``reauth_idle_timeout`` and ``reauth_timeout``. Changing the values will cause the resource to be recreated on the fly.
- [PR #219](https://github.com/zscaler/terraform-provider-zia/pull/219) Added missing ``ip_anchored`` parameter to ``resource_zpa_application_segment_browser_access``
- [PR #220](https://github.com/zscaler/terraform-provider-zia/pull/220) Udated provider to Zscaler-SDK-Go v0.3.2 to ensure pagination works correctly when more than 500 items on a list.

## 2.5.0 (November, 30 2022)

### Notes

- Release date: **(November, 30 2022)**
- Supported Terraform version: **v1.x**

### Fixes

- [PR #217](https://github.com/zscaler/terraform-provider-zia/pull/217) Fixed Read/Update/Delete functions to allow automatic recreation of resources, that have been manually deleted via the UI.
- [PR #217](https://github.com/zscaler/terraform-provider-zia/pull/217) Updated provider to zscaler-sdk-go v0.2.2

## 2.4.1

### Notes

- Release date: **(November 9 2022)**
- Supported Terraform version: **v1.x**

### Ehancements

- [PR #208](https://github.com/zscaler/terraform-provider-zpa/pull/208) - Implemented TCP/UDP Port overlap check and duplicated domain validation for ``zpa_application_segment_browser_access``
- [PR #209](https://github.com/zscaler/terraform-provider-zpa/pull/209) - Implemented TCP/UDP Port overlap check and duplicated domain validation for ``zpa_application_segment_pra``.
- [PR #210](https://github.com/zscaler/terraform-provider-zpa/pull/210) - Implemented TCP/UDP Port overlap check and duplicated domain validation for ``zpa_application_segment_inspection``.

### Bug Fixes

- [PR #206](https://github.com/zscaler/terraform-provider-zpa/pull/206) - Fix TCP/UDP port overlap check issue

- [PR #207](https://github.com/zscaler/terraform-provider-zpa/pull/207) - Fix duplicated domain_name entries during TCP/UDP port overlap issues

## 2.4.0

### Notes

- Release date: **(October 24 2022)**
- Supported Terraform version: **v1.x**

### Ehancements

- [PR #188](https://github.com/zscaler/terraform-provider-zpa/pull/188) - feat(new parameters added to App Connector Group resource TCPQuick*
  - The following new App Connector Group parameters have been added:
  - tcpQuickAckApp - Whether TCP Quick Acknowledgement is enabled or disabled for the application.
  - tcpQuickAckAssistant - Whether TCP Quick Acknowledgement is enabled or disabled for the application.
  - tcpQuickAckReadAssistant - Whether TCP Quick Acknowledgement is enabled or disabled for the application.
  - UseInDrMode
- [PR #188](https://github.com/zscaler/terraform-provider-zpa/pull/188) - Upgrade to zscaler-sdk-go v0.0.12 to support new App Connector Group parameters ``TCPQuick*`` and ``UseInDrMode``
- [PR #190](https://github.com/zscaler/terraform-provider-zpa/pull/190) - Added ZPA Terraform Provider Video Series link in the documentation, leading to [Zenith Community Portal](https://community.zscaler.com/tag/devops)
- [PR #194](https://github.com/zscaler/terraform-provider-zpa/pull/194) - Updated Provider to Zscaler-SDK-GO v0.1.1
- [PR #196](https://github.com/zscaler/terraform-provider-zpa/pull/196) - Renamed ``zpa_browser_access`` resource and data source to ``zpa_application_segment_browser_access`` for better distinction with other application segment resources. The use of the previous resource name is still supported; however, a warning message will be displayed after the apply process to inform about the change.
- [PR #196](https://github.com/zscaler/terraform-provider-zpa/pull/196) - Fixed ``zpa_application_segment_browser_access`` ``clientless_apps`` inner parameters, which were not being updated during PUT method.
- [PR #197](https://github.com/zscaler/terraform-provider-zpa/pull/197) - Updated ``zpa_service_edge_group`` parameter ``is_public`` to accept a value of Bool (true or false) instead of the current String values of (DEFAULT, TRUE or FALSE) for easier configuration. The Provider will convert the input value to string during run-time.
- [PR #201](https://github.com/zscaler/terraform-provider-zpa/pull/201) - Added ``zpa_app_connector_controller`` resource to allow app connector resource management and bulk delete action for app connector deproviosioning.
- [PR #202](https://github.com/zscaler/terraform-provider-zpa/pull/202) - Included validation function in the ``zpa_app_connector_group`` resource for the parameters ``version_profile_name`` and ``version_profile_id``. Users can now use ``version_profile_name`` with one of the following values: ``Default``, ``Previous Default``, ``New Release``

### Bug Fixes

- [PR #181](https://github.com/zscaler/terraform-provider-zpa/pull/181) - Added Support to ZPA Preview Cloud and updated to zscaler-sdk-go v0.0.9
- [PR #193](https://github.com/zscaler/terraform-provider-zpa/pull/193) - Fixed rule order in access policies, when Zscaler Deception rule exists.
- [PR #198](https://github.com/zscaler/terraform-provider-zpa/pull/198) - Due to Golang update the function ``ConfigureFunc`` used to configure the provider was deprecated; hence, the ZPA Terraform Provider was updated to use the ``ConfigureContextFunc`` instead.
- [PR #199](https://github.com/zscaler/terraform-provider-zpa/pull/199) - Fix application segment tcp/udp port conflict. The provider will issue an error message when 2 application segments have conflicting domain_name, tcp/udp ports
- [PR #200](https://github.com/zscaler/terraform-provider-zpa/pull/200) - Implemented new application segment parameter ``force_delete`` to ensure dependency removal prior to delete action.

## 2.3.2

### Notes

- Release date: **(September 2 2022)**
- Supported Terraform version: **v1.x**

### Bug Fixes

Fixed authentication issue when specifying zpa_cloud="PRODUCTION"

## 2.3.1

### Notes

- Release date: **(August 30 2022)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- [PR #169](https://github.com/zscaler/terraform-provider-zpa/pull/169) Fixed policy rule order, where the rule order in the UI didn't correspond to the desired order set in HCL. Issue [[#166](https://github.com/zscaler/terraform-provider-zpa/issues/166)]
- [PR #170](https://github.com/zscaler/terraform-provider-zpa/pull/170) Fixed special character encoding, where certain symbols caused Terraform to indicate potential configuration drifts. Issue [[#149](https://github.com/zscaler/terraform-provider-zpa/issues/149)]
- [PR #171](https://github.com/zscaler/terraform-provider-zpa/pull/171) Fixed policy configuration attributes where i.e SCIM_GROUPs were causing drifts without changes have been performed. Issue [[#165](https://github.com/zscaler/terraform-provider-zpa/issues/165)]
- [PR #175](https://github.com/zscaler/terraform-provider-zpa/pull/175) Fixed application segment drifts caused by tcp & udp ports.
- [PR #176](https://github.com/zscaler/terraform-provider-zpa/pull/176) Fixed application segment PRA drifts caused by tcp & udp ports.
- [PR #177](https://github.com/zscaler/terraform-provider-zpa/pull/177) Fixed application segment Inspection drifts caused by tcp & udp ports.

## 2.3.0

### Notes

- Release date: **(August 17 2022)**
- Supported Terraform version: **v1.x**

### Ehancements

- [PR #161](https://github.com/zscaler/terraform-provider-zpa/pull/161) Integrated newly created Zscaler GO SDK. Models are now centralized in the repository [zscaler-sdk-go](https://github.com/zscaler/zscaler-sdk-go/)

## 2.2.2

### Notes

- Release date: **(July 19 2022)**
- Supported Terraform version: **v1.x**

### Ehancements

- [PR #159](https://github.com/zscaler/terraform-provider-zpa/pull/159) Added Terraform UserAgent for Backend API tracking

## 2.2.1

### Notes

- Release date: **(July 6 2022)**
- Supported Terraform version: **v1.x**

### Bug Fixes

- Fix: Fixed authentication mechanism variables for ZPA Beta and GOV

### Documentation

1. Fixed application segment documentation and examples

## 2.2.0

### Notes

- Supported Terraform version: **v1.x**

### New Features

1. The provider now supports the following ZPA Privileged Remote Access (PRA) features:

**zpa_application_segment_pra** - The resource supports enabling `SECURE_REMOTE_ACCESS` for RDP and SSH via the `app_types` parameter. PR [#133](https://github.com/zscaler/terraform-provider-zpa/pull/133)

2. The provider now supports the following ZPA Inspection features:
**zpa_inspection_custom_controls** PR[#134](https://github.com/zscaler/terraform-provider-zpa/pull/134)
**zpa_inpection_predefined_controls** PR[#134](https://github.com/zscaler/terraform-provider-zpa/pull/134)
**zpa_inspection_profile** PR[#134](https://github.com/zscaler/terraform-provider-zpa/pull/134)
**zpa_policy_access_inspection_rule** PR[#134](https://github.com/zscaler/terraform-provider-zpa/pull/134)
**zpa_application_segment_inspection** - The resource supports enabling `INSPECT` for HTTP and HTTPS via the `app_types` parameter. PR [#135](https://github.com/zscaler/terraform-provider-zpa/pull/135)

4. Implemented a new Application Segment resource parameter ``select_connector_close_to_app``. The parameter can only be set for TCP based applications. PR [#137](https://github.com/zscaler/terraform-provider-zpa/pull/137)

### Enhancements

- Added support to `scim_attribute_header` to support policy access SCIM criteria based on SCIM attribute values.  Issue [#146](https://github.com/zscaler/terraform-provider-zpa/issues/146) / PR [#147]((https://github.com/zscaler/terraform-provider-zpa/pull/147))

- ZPA Beta Cloud: The provider now supports authentication via environment variables or static credentials to ZPA Beta Cloud. For authentication instructions please refer to the documentation page [here](https://github.com/zscaler/terraform-provider-zpa/blob/master/docs/index.md) PR [#136](https://github.com/zscaler/terraform-provider-zpa/pull/136)

- ZPA Gov Cloud: The provider now supports authentication via environment variables or static credentials to ZPA Gov Cloud. For authentication instructions please refer to the documentation page [here](https://github.com/zscaler/terraform-provider-zpa/blob/master/docs/index.md) PR [#145](https://github.com/zscaler/terraform-provider-zpa/pull/145)

### Bug Fixes
- Fix: Fixed update function on **zpa_app_server_controller** resource to ensure desired state is enforced in the upstream resource. Issue [#128](https://github.com/zscaler/terraform-provider-zpa/issues/128)
- Fix: Fixed Golangci linter

### Documentation
1. Added release notes guide to documentation PR #140
2. Fixed documentation misspellings

## 2.1.5 (May, 18 2022)

### Notes

- Supported Terraform version: **v1.x**

### Annoucements

The Terraform Provider for Zscaler Private Access (ZPA) is now officially hosted under Zscaler's GitHub account and published in the Terraform Registry. For more details, visit the Zscaler Community Article [Here](https://community.zscaler.com/t/zpa-and-zia-terraform-providers-now-verified/16675)
Administrators who used previous versions of the provider, and followed instructions to install the binary as a custom provider, must update their provider block as such:

```hcl
terraform {
  required_providers {
    zpa = {
      source = "zscaler/zpa"
      version = "2.1.5"
    }
  }
}
provider "zpa" {}

```

### Enhancements

- Documentation: Updated documentation to comply with Terraform registry formatting. #125
- ``zpa_posture_profile`` Updated search mechanism to support posture profile name search without the Zscaler cloud name. PR #123
- ``zpa_trusted_network`` Updated search mechanism to support trusted network name search without the Zscaler cloud name. PR #123

### Bug Fixes

- Fixed ``zpa_application_segment`` to support updates on ``tcp_port_ranges``, ``udp_port_ranges`` and ``tcp_port_range``, ``udp_port_range`` Issue #103

## 2.1.3 (May, 18 2022)

### Notes

- Supported Terraform version: **v1.x**

### Announcements

The Terraform Provider for Zscaler Private Access (ZPA) is now officially hosted under Zscaler's GitHub account and published in the Terraform Registry. For more details, visit the Zscaler Community Article [Here](https://community.zscaler.com/t/zpa-and-zia-terraform-providers-now-verified/16675)
Administrators who used previous versions of the provider, and followed instructions to install the binary as a custom provider, must update their provider block as such:

```hcl
terraform {
  required_providers {
    zpa = {
      source = "zscaler/zpa"
      version = "2.1.3"
    }
  }
}
provider "zpa" {}

```

## 2.1.2 (May 6, 2022)

### Notes

- Supported Terraform version: **v1.x**

### Bug Fixes

- Fix: tcp and udp ports were not being updated during changes, requiring the application segment resource to be fully destroyed and rebuilt. Implemented ``ForceNew`` in the the ``zpa_application_segment`` resource parameters: ``tcp_port_range``, ``udp_port_range``, ``tcp_port_ranges``, ``udp_port_ranges``. This behavior instructs Terraform to first destroy and then recreate the resource if any of the attributes change in the configuration, as opposed to trying to update the existing resource. The destruction of the resource does not impact attached resources such as server groups, segment groups or policies.

## 2.1.1 (April 27, 2022)

### Notes

- Supported Terraform version: **v1.x**

### Enhancements

1. Refactored and added new acceptance tests for better statement coverage. These tests are considered best practice and were added to routinely verify that the ZPA Terraform Plugin produces the expected outcome. [PR#88], [PR#96], [PR#98], [PR#99]

2. Support explicitly empty port ranges. Allow optional use of Attributes as Blocks syntax for ``zpa_application_segment`` {tcp,udp}_port_range blocks, allowing clean specification of "no port ranges" in dynamic contexts. [PR#97](https://github.com/zscaler/terraform-provider-zpa/pull/97) Thanks @isometry

### Deprecations

1. Deprecated all legacy policy set controller endpoints: ``/policySet/global``, ``/policySet/reauth``, ``/policySet/bypass`` [PR#88](https://github.com/zscaler/terraform-provider-zpa/pull/88)

2. Deprecated all references to ZPA private API gateway. [PR#87](https://github.com/zscaler/terraform-provider-zpa/pull/87)

## 2.1.0 (March 05, 2022)

### Notes

- Supported Terraform version: **v1.x**

### Enhancements

1. Refactored and added new acceptance tests. These tests are considered best practice and were added to routinely verify that the ZPA Terraform Plugin produces the expected outcome. [PR#xx](https://github.com/zscaler/terraform-provider-zpa/pull/xx)

- ``data_source_zpa_app_connector_controller_test``
- ``data_source_zpa_app_connector_group_test``
- ``data_source_zpa_app_server_controller_test``
- ``data_source_zpa_application_segment_test``
- ``data_source_zpa_ba_certificate_test``
- ``data_source_zpa_browser_access_test``
- ``data_source_zpa_cloud_connector_group_test``
- ``data_source_zpa_customer_version_profile_test``
- ``data_source_zpa_enrollement_cert_test``
- ``data_source_zpa_idp_controller_test``
- ``data_source_zpa_lss_config_client_types_test``
- ``data_source_zpa_lss_config_log_types_formats_test``
- ``data_source_zpa_lss_config_status_codes_test``
- ``data_source_zpa_machine_group_test``
- ``data_source_zpa_posture_profile_test``
- ``data_source_zpa_segment_group_test``
- ``data_source_zpa_server_group_test``
- ``data_source_zpa_trusted_network_test``
- ``resource_zpa_app_connector_group_test``
- ``resource_zpa_app_server_controller_test``
- ``resource_zpa_application_segment_test``
- ``resource_zpa_segment_group_test``
- ``resource_zpa_server_group_test``
- ``resource_zpa_service_edge_group_test``
- ``resource_zpa_policy_access_rule_test``
- ``resource_zpa_policy_access_timeout_rule_test``
- ``resource_zpa_policy_access_forwarding_rule_test``

### Bug Fixes

- Fix: Acceptance Tests for ``zpa_browser_access_test``
- Fix: Consolidate Policy Type resources
- Fix: Refactor ZPA API Client

## 2.0.7 (February 17, 2022)

### Notes

- Supported Terraform version: **v1.x**

### Bug Fixes

- ZPA-50: Fixed and removed deprecated arguments from ``zpa_application_segments`` data source and resource :wrench:
- ZPA-50: Fixed ``zpa_posture_profile`` and ``zpa_trusted_networks`` acceptance tests to include ZIA cloud name :wrench:

### Enhancements

- ZPA-51: Updated common ``NetworkPorts`` flatten and expand functions for better optimization and global use across multiple application segment resources. This update affects the following resources: ``data_source_zpa_application_segment``, ``data_source_zpa_browser_access`` and ``resource_zpa_application_segment``, ``resource_source_zpa_browser_access`` :rocket:

## 2.0.6 (February 3, 2022)

### Notes

- Supported Terraform version: **v1.x**

### New Data Sources

- Added new data source for ``zpa_app_connector_controller`` resource. [PR#62](https://github.com/zscaler/terraform-provider-zpa/pull/62)
- Added new data source for ``zpa_service_edge_controller`` resource. [PR#63](https://github.com/zscaler/terraform-provider-zpa/pull/63)

### New Acceptance Tests

These tests are considered best practice and were added to routinely verify that the ZPA Terraform Plugin produces the expected outcome. [PR#64](https://github.com/zscaler/terraform-provider-zpa/pull/64)

- ``data_source_zpa_app_connector_controller_test``
- ``data_source_zpa_app_connector_group_test``
- ``data_source_zpa_app_server_controller_test``
- ``data_source_zpa_application_segment_test``
- ``data_source_zpa_ba_certificate_test``
- ``data_source_zpa_browser_access_test``
- ``data_source_zpa_cloud_connector_group_test``
- ``data_source_zpa_customer_version_profile_test``
- ``data_source_zpa_enrollement_cert_test``
- ``data_source_zpa_idp_controller_test``
- ``data_source_zpa_lss_config_client_types_test``
- ``data_source_zpa_lss_config_log_types_formats_test``
- ``data_source_zpa_lss_config_status_codes_test``
- ``data_source_zpa_machine_group_test``
- ``data_source_zpa_posture_profile_test``
- ``data_source_zpa_segment_group_test``
- ``data_source_zpa_server_group_test``
- ``data_source_zpa_trusted_network_test``
- ``resource_zpa_app_connector_group_test``
- ``resource_zpa_app_server_controller_test``
- ``resource_zpa_application_segment_test``
- ``resource_zpa_segment_group_test``
- ``resource_zpa_server_group_test``
- ``resource_zpa_service_edge_group_test``

## 2.0.5 (December 20, 2021)

### Notes

- Supported Terraform version: **v1.x**

### Enhancements

- The provider now supports the ability to import policy access resources via its `name` and/or `id` property to support easier migration of existing ZPA resources via `terraform import` command.
- The  following policy access resources are supported:
  - resource_zpa_policy_access_rule - [PR#51](https://github.com/zscaler/terraform-provider-zpa/issues/51)] :rocket:
  - resource_zpa_policy_access_timeout_rule - [PR#51](https://github.com/zscaler/terraform-provider-zpa/pull/51) :rocket:
  - resource_zpa_policy_access_forwarding_rule - [PR#51](https://github.com/zscaler/terraform-provider-zpa/pull/51) :rocket:

- The provider now supports policy access creation to be associated with Cloud Connector Group resource
  - resource_zpa_policy_access_rule - [PR#54](https://github.com/zscaler/terraform-provider-zpa/pull/54) :rocket:
  - Added new `client_type` to support access, forward, and timeout policy creation. The following new types have been added:
  - zpn_client_type_ip_anchoring, zpn_client_type_browser_isolation, zpn_client_type_machine_tunnel and zpn_client_type_edge_connector. [PR#57](https://github.com/zscaler/terraform-provider-zpa/issues/57)] :rocket:

- Updated the following examples for more accuracy:
  - resource_zpa_policy_access_rule
  - resource_zpa_app_connector_group

### Bug Fixes

- Fixed pagination issues with all resources where only the default pagesize was being returned. [PR#52](https://github.com/zscaler/terraform-provider-zpa/pull/52) :wrench:
- Fixed issue where Terraform showed that resources had been modified even though nothing had been changed in the upstream resources.[PR#54](https://github.com/zscaler/terraform-provider-zpa/pull/54) :wrench:

## 2.0.4 (December 6, 2021)

### Notes

- Supported Terraform version: **v1.x**

### New Data Sources

- Added new data source for ``zpa_browser_access`` resource.

### Enhancements

- The provider now supports the ability to import resources via its `name` and/or `id` property to support easier migration of existing ZPA resources via `terraform import` command.
This capability is currently available to the following resources:
- resource_zpa_app_connector_group - Issue ([#29](https://github.com/zscaler/terraform-provider-zpa/issues/29))
- resource_zpa_app_server_controller - [PR#42](https://github.com/zscaler/terraform-provider-zpa/pull/42) :rocket:
- resource_zpa_application_segment - [PR#42](https://github.com/zscaler/terraform-provider-zpa/pull/42) :rocket:
- resource_zpa_segment_group - [PR#42](https://github.com/zscaler/terraform-provider-zpa/pull/42) :rocket:
- resource_zpa_server_group - [PR#42](https://github.com/zscaler/terraform-provider-zpa/pull/42) :rocket:
- resource_zpa_service_edge_group - [PR#42](https://github.com/zscaler/terraform-provider-zpa/pull/42) :rocket:
- resource_zpa_provisioning_key - [PR#45](https://github.com/zscaler/terraform-provider-zpa/pull/45) :rocket:
- resource_zpa_browser_access - [PR#48](https://github.com/zscaler/terraform-provider-zpa/pull/48) :rocket:
- zpa_lss_config_controller - [PR#48](https://github.com/zscaler/terraform-provider-zpa/pull/48) :rocket:

Note: To import resources not currently supported, the resource numeric ID is required.

### Bug Fixes

- Fixed [INFO] and [Error] message in ``data_source_zpa_lss_config_controller`` [PR#43](https://github.com/zscaler/terraform-provider-zpa/pull/43) 🔧

## 2.0.3 (November 21, 2021)

### Notes

- Supported Terraform version: **v1.x**

### Dependabot Updates

- Dependabot updates [PR#33](https://github.com/zscaler/terraform-provider-zpa/pull/33/) Bump github.com/hashicorp/terraform-plugin-docs from 0.5.0 to 0.5.1 #33
- Dependabot updates [PR#34](https://github.com/zscaler/terraform-provider-zpa/pull/34) Bump github.com/hashicorp/terraform-plugin-sdk/v2 from 2.8.0 to 2.9.0

## 2.0.2 (November 7, 2021)

### Notes

- Supported Terraform version: **v1.x**

### Enhancements

- Added custom validation function ``ValidateStringFloatBetween`` to ``resource_zpa_app_connector_group`` to validate ``longitude`` and ``latitude`` parameters. [ZPA-17](https://github.com/zscaler/terraform-provider-zpa/pull/17).
- Added custom validation function ``ValidateStringFloatBetween`` to ``resource_zpa_service_edge_group`` to validate ``longitude`` and ``latitude`` parameters. [ZPA-18](https://github.com/zscaler/terraform-provider-zpa/pull/18).

## 2.0.1 (November 4, 2021)

### Notes

- Supported Terraform version: **v1.x**

### Bug Fixes

- Fixed issue where provider authentication parameters for hard coded credentials was not working:
- Changed the following variable names: ``client_id``, ``client_secret`` and ``customerid`` to ``zpa_client_id``, ``zpa_client_secret`` and ``zpa_customer_id``.

## 2.0.0 (November 3, 2021)

### Notes

- Supported Terraform version: **v1.x**

- New management APIs are now available to manage App Connectors, App Connector Groups, Service Edges, Service Edge Groups, and Log Streaming Service (LSS) configurations.
- New prerequisite APIs for enrollment certificates, provisioning keys, and to get version profiles, client types, status codes, and LSS formats are added.
- A new API to reorder policy rules is added.
- The endpoints to get all browser access (BA) certificates, IdPs, posture profiles, trusted networks, and SAML attributes are now deprecated, and new APIs with pagination are provided.
- API endpoints specific to a policy (global/reauth/bypass) are deprecated and replaced by a generic API that takes policyType as a parameter.
- The port range configuration for the application segment has been enhanced for more readability. The tcpPortRanges and udpPortRanges fields are deprecated and replaced with tcpPortRange and udpPortRange.

### Features

### New Resources

- New Resource: ``resource_zpa_app_connector_group`` 🆕
- New Resource: ``resource_zpa_service_edge_group`` 🆕
- New Resource: ``resource_zpa_provisioning_key`` 🆕
- New Resource: ``resource_zpa_lss_config_controller`` 🆕

### New Data Sources

- New Data Source: ``data_source_zpa_enrollement_cert`` 🆕
- New Data Source: ``data_source_zpa_customer_version_profile`` 🆕
- New Data Source: ``data_source_zpa_lss_config_controller`` 🆕
- New Data Source: ``data_source_zpa_lss_config_log_types_formats`` 🆕
- New Data Source: ``data_source_zpa_lss_config_status_codes`` 🆕
- New Data Source: ``data_source_zpa_lss_config_client_types`` 🆕
- New Data Source: ``data_source_zpa_policy_type`` 🆕

### Enhancements

1. A new API to reorder policy rules is added. This update affects the following resources:
    - ``resource_zpa_policy_access_rule`` :rocket:
    - ``resource_zpa_policy_access_timeout_rule`` :rocket:
    - ``resource_zpa_policy_access_forwarding_rule`` :rocket:
2. Updated the following data sources to V2 API to support pagination:
    - ``data_source_zpa_idp_controller`` :rocket:
    - ``data_source_zpa_saml_attribute``:rocket:
    - ``data_source_zpa_scim_attribute_header`` :rocket:
    - ``data_source_zpa_trusted_network`` :rocket:
    - ``data_source_zpa_posture_profile`` :rocket:
    - ``data_source_zpa_ba_certificate`` :rocket:
    - ``data_source_zpa_machine_group`` :rocket:
3. Added additional validations to ``bypass_type`` parameter in ``resource_zpa_browser_access``. :rocket:
4. The port range configuration for the application segment has been enhanced for more readability. This update affects the following resources:
    - ``resource_zpa_application_segment`` :rocket:
    - ``resource_zpa_browser_access`` :rocket:

### Deprecations

- API endpoints specific to a policy (global/reauth/bypass) are deprecated and replaced by a generic API that takes policyType as a parameter.

1. Deprecated ``data_source_zpa_global_forwarding_policy`` and ``data_source_zpa_global_timeout_policy`` and replaced with ``data_source_zpa_policy_type`` 💥

2. Deprecated ``data_source_zpa_global_access_policy`` and renamed with ``data_source_zpa_policy_type`` 💥

3. Deprecated ``tcp_port_ranges`` and ``udp_port_ranges`` fields are deprecated and replaced with ``tcp_port_range`` and ``udp_port_range``. The values will be kept in Terraform schema until next provider update for backwards compatibility. 💥

## 1.0.0 (September 23, 2021)

### Notes

- Supported Terraform version: **v1.x**

### Initial Release

#### Resource Features

- New Resource: ``resource_zpa_app_server_controller`` 🆕
- New Resource: ``resource_zpa_application_segment`` 🆕
- New Resource: ``resource_zpa_browser_access`` 🆕
- New Resource: ``resource_zpa_policy_access_forwarding_rule`` 🆕
- New Resource: ``resource_zpa_policy_access_rule`` 🆕
- New Resource: ``resource_zpa_policy_access_timeout_rule`` 🆕
- New Resource: ``resource_zpa_segment_group`` 🆕
- New Resource: ``resource_zpa_server_group`` 🆕

### Data Source Features

- New Data Source: ``data_source_zpa_app_connector_group`` 🆕
- New Data Source: ``data_source_zpa_app_server_controller`` 🆕
- New Data Source: ``data_source_zpa_application_segment`` 🆕
- New Data Source: ``data_source_zpa_ba_certificate`` 🆕
- New Data Source: ``data_source_zpa_cloud_connector_group`` 🆕
- New Data Source: ``data_source_zpa_global_access_policy`` 🆕
- New Data Source: ``data_source_zpa_global_forwarding_policy`` 🆕
- New Data Source: ``data_source_zpa_global_timeout_policy`` 🆕
- New Data Source: ``data_source_zpa_idp_controller`` 🆕
- New Data Source: ``data_source_zpa_machine_group`` 🆕
- New Data Source: ``data_source_zpa_posture_profile`` 🆕
- New Data Source: ``data_source_zpa_saml_attribute`` 🆕
- New Data Source: ``data_source_zpa_scim_attribute_header`` 🆕
- New Data Source: ``data_source_zpa_scim_group`` 🆕
- New Data Source: ``data_source_zpa_segment_group`` 🆕
- New Data Source: ``data_source_zpa_server_group`` 🆕
- New Data Source: ``data_source_zpa_trusted_network`` 🆕
