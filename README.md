# Getting started

The Cisco Meraki Dashboard API is a modern REST API based on the [OpenAPI](https://swagger.io/docs/specification/about/) specification.

## What can the API be used for?
The Dashboard API can be used for many purposes. It’s meant to be an open-ended tool. Here are some examples of use cases:

* Add new organizations, admins, networks, devices, VLANs, and more
* Configure networks at scale
* Automatically on-board and off-board new employees’ teleworker setups
* Build your own dashboard for store managers, field techs, or unique use cases

## Enabling the Dashboard API
1. Begin by logging into [Meraki Dashboard](https://dashboard.meraki.com) and navigating to **Organization > Settings**

2. Locate the section titled **Dashboard API access** and select **Enable Access**, then **Save** your changes

3. After enabling the API, choose your username at the top-right of the Meraki Dashboard and select **my profile**

4. Locate the section titled **Dashboard API access** and select **Generate new API key**

*Note: The API key is associated with a Dashboard administrator account. You can generate, revoke, and regenerate your API key on your profile.*

**Keep your API key safe as it provides authentication to all of your organizations with the API enabled. If your API key is shared, you can regenerate your API key at any time. This will revoke the existing API key.**

Copy and store your API key in a safe place. Dashboard does not store API keys in plaintext for security reasons, so this is the only time you will be able to record it. If you lose or forget your API key, you will have to revoke it and generate a new one.

Every request must specify an API key via a request header.

The API key must be specified in the URL header. The API will return a 404 (rather than a 403) in response to a request with a missing or incorrect API key in order to prevent leaking the existence of resources to unauthorized users.

`X-Cisco-Meraki-API-Key: <secret key>`

Read more about API [authorization](../api/#/python/getting-started/authorizing-your-client)


## Versioning
Once an API version is released, we will make only backwards-compatible changes to it. Backwards-compatible changes include:

* Adding new API resources

* Adding new optional request parameters to existing API methods

* Adding new properties to existing API responses

* Changing the order of properties in existing API responses

## Rate Limit
* The Dashboard API is limited to **5 calls per second**, per organization.
* A burst of 5 additional calls are allowed in the first second, so a maximum of 15 calls in the first 2 seconds.
* The rate limiting technique is based off of the [token bucket model](https://en.wikipedia.org/wiki/Token_bucket).
* An error with a `429` status code will be returned when the rate limit has been exceeded.
* Expect to backoff for 1 - 2 seconds if the limit has been exceeded. You may have to wait potentially longer if a large number of requests were made within this timeframe.


## Additional Details
Identifiers in the API are opaque strings. A `{networkId}`, for example, might be the string “126043”, whereas an `{orderId}` might contain characters, such as “4S1234567”. Client applications must not try to parse them as numbers. Even identifiers that look like numbers might be too long to encode without loss of precision in Javascript, where the only numeric type is IEEE 754 floating point.

Verbs in the API follow the usual REST conventions:

`GET` returns the value of a resource or a list of resources, depending on whether an identifier is specified. For example, a `GET` of `/v0/organizations` returns a list of organizations, whereas a `GET` of `/v0/organizations/{organizationId}` returns a particular organization.

`POST` adds a new resource, as in a `POST` to `/v0/organizations/{organizationId}/admins`, or performs some other non-idempotent change.

`PUT` updates a resource. `PUTs` are idempotent; they update a resource, creating it first if it does not already exist. A `PUT` should specify all the fields of a resource; the API will revert omitted fields to their default value.

`DELETE` removes a resource.


## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build meraki.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install meraki-0.1.1-beta.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Meraki-Ruby&workspaceName=Meraki-Ruby&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

## How to Use

The following section explains how to use the Meraki Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the Meraki gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'meraki', '~> 0.1.1-beta.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Meraki-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| x_cisco_meraki_api_key | TODO: add a description |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
x_cisco_meraki_api_key = 'x_cisco_meraki_api_key'

client = Meraki::Meraki.new(
  x_cisco_meraki_api_key: x_cisco_meraki_api_key
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Meraki%20Dashboard%20API-Ruby&workspaceName=Meraki&projectName=meraki&gemName=meraki&gemVer=0.1.1-beta.0&initLine=client%2520%253D%2520Meraki.new%2528%2527x_cisco_meraki_api_key%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [AdminsController](#admins_controller)
* [AlertSettingsController](#alert_settings_controller)
* [MVSenseController](#mv_sense_controller)
* [APIUsageController](#api_usage_controller)
* [BluetoothClientsController](#bluetooth_clients_controller)
* [NetworksController](#networks_controller)
* [CamerasController](#cameras_controller)
* [ClientsController](#clients_controller)
* [ConfigTemplatesController](#config_templates_controller)
* [DevicesController](#devices_controller)
* [MXCellularFirewallController](#mx_cellular_firewall_controller)
* [MXL3FirewallController](#mxl3_firewall_controller)
* [MXL7ApplicationCategoriesController](#mxl7_application_categories_controller)
* [MXL7FirewallController](#mxl7_firewall_controller)
* [MXVPNFirewallController](#mxvpn_firewall_controller)
* [MRL3FirewallController](#mrl3_firewall_controller)
* [GroupPoliciesController](#group_policies_controller)
* [HTTPServersController](#http_servers_controller)
* [MerakiAuthUsersController](#meraki_auth_users_controller)
* [OrganizationsController](#organizations_controller)
* [PIIController](#pii_controller)
* [SAMLRolesController](#saml_roles_controller)
* [ClientSecurityEventsController](#client_security_events_controller)
* [MalwareSettingsController](#malware_settings_controller)
* [NamedTagScopeController](#named_tag_scope_controller)
* [SMController](#sm_controller)
* [SplashLoginAttemptsController](#splash_login_attempts_controller)
* [SplashSettingsController](#splash_settings_controller)
* [SsidsController](#ssids_controller)
* [SwitchSettingsController](#switch_settings_controller)
* [SwitchPortsController](#switch_ports_controller)
* [SwitchStacksController](#switch_stacks_controller)
* [SyslogServersController](#syslog_servers_controller)
* [ContentFilteringCategoriesController](#content_filtering_categories_controller)
* [ContentFilteringRulesController](#content_filtering_rules_controller)
* [FirewalledServicesController](#firewalled_services_controller)
* [MX1ManyNATRulesController](#mx1_many_nat_rules_controller)
* [MX11NATRulesController](#mx11_nat_rules_controller)
* [MXPortForwardingRulesController](#mx_port_forwarding_rules_controller)
* [StaticRoutesController](#static_routes_controller)
* [UplinkSettingsController](#uplink_settings_controller)
* [VlansController](#vlans_controller)
* [WirelessHealthController](#wireless_health_controller)

## <a name="admins_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AdminsController") AdminsController

### Get singleton instance

The singleton instance of the ``` AdminsController ``` class can be accessed from the API Client.

```ruby
admins_controller = client.admins
```

### <a name="get_organization_admins"></a>![Method: ](https://apidocs.io/img/method.png ".AdminsController.get_organization_admins") get_organization_admins

> List the dashboard administrators in this organization


```ruby
def get_organization_admins(organization_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
organization_id = 'organizationId'

result = admins_controller.get_organization_admins(organization_id)

```


### <a name="create_organization_admins"></a>![Method: ](https://apidocs.io/img/method.png ".AdminsController.create_organization_admins") create_organization_admins

> Create a new dashboard administrator


```ruby
def create_organization_admins(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| create_organization_admins |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

create_organization_admins = CreateOrganizationAdminsModel.new
collect['create_organization_admins'] = create_organization_admins


result = admins_controller.create_organization_admins(collect)

```


### <a name="update_organization_admin"></a>![Method: ](https://apidocs.io/img/method.png ".AdminsController.update_organization_admin") update_organization_admin

> Update an administrator


```ruby
def update_organization_admin(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization_admin |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id

update_organization_admin = UpdateOrganizationAdminModel.new
collect['update_organization_admin'] = update_organization_admin


result = admins_controller.update_organization_admin(collect)

```


### <a name="delete_organization_admin"></a>![Method: ](https://apidocs.io/img/method.png ".AdminsController.delete_organization_admin") delete_organization_admin

> Revoke all access for a dashboard administrator within this organization


```ruby
def delete_organization_admin(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id


admins_controller.delete_organization_admin(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="alert_settings_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AlertSettingsController") AlertSettingsController

### Get singleton instance

The singleton instance of the ``` AlertSettingsController ``` class can be accessed from the API Client.

```ruby
alertSettings_controller = client.alert_settings
```

### <a name="get_network_alert_settings"></a>![Method: ](https://apidocs.io/img/method.png ".AlertSettingsController.get_network_alert_settings") get_network_alert_settings

> Return the alert configuration for this network


```ruby
def get_network_alert_settings(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = alertSettings_controller.get_network_alert_settings(network_id)

```


### <a name="update_network_alert_settings"></a>![Method: ](https://apidocs.io/img/method.png ".AlertSettingsController.update_network_alert_settings") update_network_alert_settings

> Update the alert configuration for this network


```ruby
def update_network_alert_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_alert_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_alert_settings = UpdateNetworkAlertSettingsModel.new
collect['update_network_alert_settings'] = update_network_alert_settings


result = alertSettings_controller.update_network_alert_settings(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mv_sense_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MVSenseController") MVSenseController

### Get singleton instance

The singleton instance of the ``` MVSenseController ``` class can be accessed from the API Client.

```ruby
mVSense_controller = client.mv_sense
```

### <a name="get_device_camera_analytics_zones"></a>![Method: ](https://apidocs.io/img/method.png ".MVSenseController.get_device_camera_analytics_zones") get_device_camera_analytics_zones

> Returns all configured analytic zones for this camera


```ruby
def get_device_camera_analytics_zones(serial); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
serial = 'serial'

result = mVSense_controller.get_device_camera_analytics_zones(serial)

```


### <a name="get_device_camera_analytics_recent"></a>![Method: ](https://apidocs.io/img/method.png ".MVSenseController.get_device_camera_analytics_recent") get_device_camera_analytics_recent

> Returns most recent record for analytics zones


```ruby
def get_device_camera_analytics_recent(serial); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
serial = 'serial'

result = mVSense_controller.get_device_camera_analytics_recent(serial)

```


### <a name="get_device_camera_analytics_live"></a>![Method: ](https://apidocs.io/img/method.png ".MVSenseController.get_device_camera_analytics_live") get_device_camera_analytics_live

> Returns live state from camera of analytics zones


```ruby
def get_device_camera_analytics_live(serial); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
serial = 'serial'

result = mVSense_controller.get_device_camera_analytics_live(serial)

```


### <a name="get_device_camera_analytics_overview"></a>![Method: ](https://apidocs.io/img/method.png ".MVSenseController.get_device_camera_analytics_overview") get_device_camera_analytics_overview

> Returns an overview of aggregate analytics data for a timespan


```ruby
def get_device_camera_analytics_overview(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 365 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 7 days after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 7 days. The default is 1 hour. |


#### Example Usage

```ruby
collect = Hash.new

serial = 'serial'
collect['serial'] = serial

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 14
collect['timespan'] = timespan


result = mVSense_controller.get_device_camera_analytics_overview(collect)

```


### <a name="get_device_camera_analytics_zone_history"></a>![Method: ](https://apidocs.io/img/method.png ".MVSenseController.get_device_camera_analytics_zone_history") get_device_camera_analytics_zone_history

> Return historical records for analytic zones


```ruby
def get_device_camera_analytics_zone_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |
| zone_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 365 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 14 hours after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 14 hours. The default is 1 hour. |
| resolution |  ``` Optional ```  | The time resolution in seconds for returned data. The valid resolutions are: 60. The default is 60. |


#### Example Usage

```ruby
collect = Hash.new

serial = 'serial'
collect['serial'] = serial

zone_id = 'zoneId'
collect['zone_id'] = zone_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 14
collect['timespan'] = timespan

resolution = 14
collect['resolution'] = resolution


result = mVSense_controller.get_device_camera_analytics_zone_history(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="api_usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".APIUsageController") APIUsageController

### Get singleton instance

The singleton instance of the ``` APIUsageController ``` class can be accessed from the API Client.

```ruby
aPIUsage_controller = client.api_usage
```

### <a name="get_organization_api_requests"></a>![Method: ](https://apidocs.io/img/method.png ".APIUsageController.get_organization_api_requests") get_organization_api_requests

> List the API requests made by an organization


```ruby
def get_organization_api_requests(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 31 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 31 days after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 31 days. The default is 31 days. |
| per_page |  ``` Optional ```  | The number of entries per page returned. Acceptable range is 3 - 1000. Default is 50. |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| admin_id |  ``` Optional ```  | Filter the results by the ID of the admin who made the API requests |
| path |  ``` Optional ```  | Filter the results by the path of the API requests |
| method |  ``` Optional ```  | Filter the results by the method of the API requests (must be 'GET', 'PUT', 'POST' or 'DELETE') |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 14
collect['timespan'] = timespan

per_page = 14
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before

admin_id = 'adminId'
collect['admin_id'] = admin_id

path = 'path'
collect['path'] = path

method = 'method'
collect['method'] = method


result = aPIUsage_controller.get_organization_api_requests(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="bluetooth_clients_controller"></a>![Class: ](https://apidocs.io/img/class.png ".BluetoothClientsController") BluetoothClientsController

### Get singleton instance

The singleton instance of the ``` BluetoothClientsController ``` class can be accessed from the API Client.

```ruby
bluetoothClients_controller = client.bluetooth_clients
```

### <a name="get_network_bluetooth_client"></a>![Method: ](https://apidocs.io/img/method.png ".BluetoothClientsController.get_network_bluetooth_client") get_network_bluetooth_client

> Return a Bluetooth client


```ruby
def get_network_bluetooth_client(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| include_connectivity_history |  ``` Optional ```  | Include the connectivity history for this client |
| connectivity_history_timespan |  ``` Optional ```  | The timespan, in seconds, for the connectivityHistory data. By default 1 day, 86400, will be used. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

include_connectivity_history = 'includeConnectivityHistory'
collect['include_connectivity_history'] = include_connectivity_history

connectivity_history_timespan = 'connectivityHistoryTimespan'
collect['connectivity_history_timespan'] = connectivity_history_timespan


result = bluetoothClients_controller.get_network_bluetooth_client(collect)

```


### <a name="get_network_bluetooth_clients"></a>![Method: ](https://apidocs.io/img/method.png ".BluetoothClientsController.get_network_bluetooth_clients") get_network_bluetooth_clients

> List the Bluetooth clients seen by APs in this network


```ruby
def get_network_bluetooth_clients(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned. Acceptable range is 5 - 1000. Default is 10. |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| timespan |  ``` Optional ```  | The timespan, in seconds, used to look back from now for bluetooth clients |
| include_connectivity_history |  ``` Optional ```  | Include the connectivity history for this client |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

per_page = 14
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before

timespan = 'timespan'
collect['timespan'] = timespan

include_connectivity_history = 'includeConnectivityHistory'
collect['include_connectivity_history'] = include_connectivity_history


result = bluetoothClients_controller.get_network_bluetooth_clients(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="networks_controller"></a>![Class: ](https://apidocs.io/img/class.png ".NetworksController") NetworksController

### Get singleton instance

The singleton instance of the ``` NetworksController ``` class can be accessed from the API Client.

```ruby
networks_controller = client.networks
```

### <a name="get_network_bluetooth_settings"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network_bluetooth_settings") get_network_bluetooth_settings

> Return the Bluetooth settings for a network. <a href="https://documentation.meraki.com/MR/Bluetooth/Bluetooth_Low_Energy_(BLE)">Bluetooth settings</a> must be enabled on the network.


```ruby
def get_network_bluetooth_settings(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = networks_controller.get_network_bluetooth_settings(network_id)

```


### <a name="update_network_bluetooth_settings"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.update_network_bluetooth_settings") update_network_bluetooth_settings

> Update the Bluetooth settings for a network. See the docs page for <a href="https://documentation.meraki.com/MR/Bluetooth/Bluetooth_Low_Energy_(BLE)">Bluetooth settings</a>.


```ruby
def update_network_bluetooth_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_bluetooth_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_bluetooth_settings = UpdateNetworkBluetoothSettingsModel.new
collect['update_network_bluetooth_settings'] = update_network_bluetooth_settings


result = networks_controller.update_network_bluetooth_settings(collect)

```


### <a name="get_organization_networks"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_organization_networks") get_organization_networks

> List the networks in an organization


```ruby
def get_organization_networks(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| config_template_id |  ``` Optional ```  | An optional parameter that is the ID of a config template. Will return all networks bound to that template. |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

config_template_id = 'configTemplateId'
collect['config_template_id'] = config_template_id


result = networks_controller.get_organization_networks(collect)

```


### <a name="create_organization_networks"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.create_organization_networks") create_organization_networks

> Create a network


```ruby
def create_organization_networks(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| create_organization_networks |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

create_organization_networks = CreateOrganizationNetworksModel.new
collect['create_organization_networks'] = create_organization_networks


result = networks_controller.create_organization_networks(collect)

```


### <a name="get_network"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network") get_network

> Return a network


```ruby
def get_network(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = networks_controller.get_network(network_id)

```


### <a name="update_network"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.update_network") update_network

> Update a network


```ruby
def update_network(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network = UpdateNetworkModel.new
collect['update_network'] = update_network


result = networks_controller.update_network(collect)

```


### <a name="delete_network"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.delete_network") delete_network

> Delete a network


```ruby
def delete_network(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

networks_controller.delete_network(network_id)

```


### <a name="bind_network"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.bind_network") bind_network

> Bind a network to a template.


```ruby
def bind_network(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| bind_network |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

bind_network = BindNetworkModel.new
collect['bind_network'] = bind_network


result = networks_controller.bind_network(collect)

```


### <a name="unbind_network"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.unbind_network") unbind_network

> Unbind a network from a template.


```ruby
def unbind_network(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = networks_controller.unbind_network(network_id)

```


### <a name="get_network_traffic"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network_traffic") get_network_traffic

> The traffic analysis data for this network.
> <a href="https://documentation.meraki.com/MR/Monitoring_and_Reporting/Hostname_Visibility">Traffic Analysis with Hostname Visibility</a> must be enabled on the network.
> 


```ruby
def get_network_traffic(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| timespan |  ``` Required ```  | The timespan for the data. Must be an integer representing a duration in seconds between two hours and one month. (Mandatory.) |
| device_type |  ``` Optional ```  | Filter the data by device type: combined (default), wireless, switch, appliance. When using combined, for each rule the data will come from the device type with the most usage. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

timespan = 'timespan'
collect['timespan'] = timespan

device_type = 'deviceType'
collect['device_type'] = device_type


result = networks_controller.get_network_traffic(collect)

```


### <a name="get_network_access_policies"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network_access_policies") get_network_access_policies

> List the access policies for this network. Only valid for MS networks.


```ruby
def get_network_access_policies(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = networks_controller.get_network_access_policies(network_id)

```


### <a name="get_network_air_marshal"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network_air_marshal") get_network_air_marshal

> List Air Marshal scan results from a network


```ruby
def get_network_air_marshal(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 31 days from today. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameter t0. The value must be in seconds and be less than or equal to 31 days. The default is 7 days. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

timespan = 105
collect['timespan'] = timespan


result = networks_controller.get_network_air_marshal(collect)

```


### <a name="get_network_site_to_site_vpn"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.get_network_site_to_site_vpn") get_network_site_to_site_vpn

> Return the site-to-site VPN settings of a network. Only valid for MX networks.


```ruby
def get_network_site_to_site_vpn(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = networks_controller.get_network_site_to_site_vpn(network_id)

```


### <a name="update_network_site_to_site_vpn"></a>![Method: ](https://apidocs.io/img/method.png ".NetworksController.update_network_site_to_site_vpn") update_network_site_to_site_vpn

> Update the site-to-site VPN settings of a network. Only valid for MX networks in NAT mode.


```ruby
def update_network_site_to_site_vpn(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_site_to_site_vpn |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_site_to_site_vpn = UpdateNetworkSiteToSiteVpnModel.new
collect['update_network_site_to_site_vpn'] = update_network_site_to_site_vpn


result = networks_controller.update_network_site_to_site_vpn(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="cameras_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CamerasController") CamerasController

### Get singleton instance

The singleton instance of the ``` CamerasController ``` class can be accessed from the API Client.

```ruby
cameras_controller = client.cameras
```

### <a name="get_network_camera_video_link"></a>![Method: ](https://apidocs.io/img/method.png ".CamerasController.get_network_camera_video_link") get_network_camera_video_link

> Returns video link for the specified camera. If a timestamp supplied, it links to that time.


```ruby
def get_network_camera_video_link(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| timestamp |  ``` Optional ```  | The video link will start at this timestamp. The timestamp is in UNIX Epoch time (milliseconds). |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

timestamp = 'timestamp'
collect['timestamp'] = timestamp


result = cameras_controller.get_network_camera_video_link(collect)

```


### <a name="snapshot_network_camera"></a>![Method: ](https://apidocs.io/img/method.png ".CamerasController.snapshot_network_camera") snapshot_network_camera

> Generate a snapshot of what the camera sees at the specified time and return a link to that image.


```ruby
def snapshot_network_camera(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| snapshot_network_camera |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

snapshot_network_camera = SnapshotNetworkCameraModel.new
collect['snapshot_network_camera'] = snapshot_network_camera


result = cameras_controller.snapshot_network_camera(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="clients_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ClientsController") ClientsController

### Get singleton instance

The singleton instance of the ``` ClientsController ``` class can be accessed from the API Client.

```ruby
clients_controller = client.clients
```

### <a name="get_network_client"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client") get_network_client

> Return the client associated with the given identifier. This endpoint will lookup by client ID or either the MAC or IP depending on whether the network uses Track-by-IP.


```ruby
def get_network_client(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id_or_mac_or_ip |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id_or_mac_or_ip = 'idOrMacOrIp'
collect['id_or_mac_or_ip'] = id_or_mac_or_ip


result = clients_controller.get_network_client(collect)

```


### <a name="provision_network_clients"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.provision_network_clients") provision_network_clients

> Provisions a client with a name and policy. Clients can be provisioned before they associate to the network.


```ruby
def provision_network_clients(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| provision_network_clients |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

provision_network_clients = ProvisionNetworkClientsModel.new
collect['provision_network_clients'] = provision_network_clients


result = clients_controller.provision_network_clients(collect)

```


### <a name="get_network_client_usage_history"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_usage_history") get_network_client_usage_history

> Return the client's daily usage history. Usage data is in kilobytes.


```ruby
def get_network_client_usage_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id_or_mac_or_ip |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id_or_mac_or_ip = 'idOrMacOrIp'
collect['id_or_mac_or_ip'] = id_or_mac_or_ip


result = clients_controller.get_network_client_usage_history(collect)

```


### <a name="get_network_client_policy"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_policy") get_network_client_policy

> Return the policy assigned to a client on the network.


```ruby
def get_network_client_policy(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| mac |  ``` Required ```  | TODO: Add a parameter description |
| timespan |  ``` Optional ```  | The timespan for which clients will be fetched. Must be in seconds and less than or equal to a month (2592000 seconds). |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

mac = 'mac'
collect['mac'] = mac

timespan = 'timespan'
collect['timespan'] = timespan


result = clients_controller.get_network_client_policy(collect)

```


### <a name="update_network_client_policy"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.update_network_client_policy") update_network_client_policy

> Update the policy assigned to a client on the network.


```ruby
def update_network_client_policy(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| mac |  ``` Required ```  | TODO: Add a parameter description |
| update_network_client_policy |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

mac = 'mac'
collect['mac'] = mac

update_network_client_policy = UpdateNetworkClientPolicyModel.new
collect['update_network_client_policy'] = update_network_client_policy


result = clients_controller.update_network_client_policy(collect)

```


### <a name="get_network_client_splash_authorization_status"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_splash_authorization_status") get_network_client_splash_authorization_status

> Return the splash authorization for a client, for each SSID they've associated with through splash.


```ruby
def get_network_client_splash_authorization_status(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| mac |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

mac = 'mac'
collect['mac'] = mac


result = clients_controller.get_network_client_splash_authorization_status(collect)

```


### <a name="update_network_client_splash_authorization_status"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.update_network_client_splash_authorization_status") update_network_client_splash_authorization_status

> Update a client's splash authorization.


```ruby
def update_network_client_splash_authorization_status(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| mac |  ``` Required ```  | TODO: Add a parameter description |
| update_network_client_splash_authorization_status |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

mac = 'mac'
collect['mac'] = mac

update_network_client_splash_authorization_status = UpdateNetworkClientSplashAuthorizationStatusModel.new
collect['update_network_client_splash_authorization_status'] = update_network_client_splash_authorization_status


result = clients_controller.update_network_client_splash_authorization_status(collect)

```


### <a name="get_device_clients"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_device_clients") get_device_clients

> List the clients of a device, up to a maximum of a month ago. The usage of each client is returned in kilobytes. If the device is a switch, the switchport is returned; otherwise the switchport field is null.


```ruby
def get_device_clients(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 31 days from today. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameter t0. The value must be in seconds and be less than or equal to 31 days. The default is 1 day. |


#### Example Usage

```ruby
collect = Hash.new

serial = 'serial'
collect['serial'] = serial

t0 = 't0'
collect['t0'] = t0

timespan = 105
collect['timespan'] = timespan


result = clients_controller.get_device_clients(collect)

```


### <a name="get_network_client_traffic_history"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_traffic_history") get_network_client_traffic_history

> Return the client's network traffic data over time. Usage data is in kilobytes. This endpoint requires detailed traffic analysis to be enabled on the Network-wide > General page.


```ruby
def get_network_client_traffic_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id_or_mac_or_ip |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned. Acceptable range is 3 - 1000. |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id_or_mac_or_ip = 'idOrMacOrIp'
collect['id_or_mac_or_ip'] = id_or_mac_or_ip

per_page = 105
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = clients_controller.get_network_client_traffic_history(collect)

```


### <a name="get_network_client_events"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_events") get_network_client_events

> Return the events associated with this client


```ruby
def get_network_client_events(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id_or_mac_or_ip |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned. Acceptable range is 3 - 100. Default is 100. |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id_or_mac_or_ip = 'idOrMacOrIp'
collect['id_or_mac_or_ip'] = id_or_mac_or_ip

per_page = 105
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = clients_controller.get_network_client_events(collect)

```


### <a name="get_network_client_latency_history"></a>![Method: ](https://apidocs.io/img/method.png ".ClientsController.get_network_client_latency_history") get_network_client_latency_history

> Return the latency history for a client. The latency data is from a sample of 2% of packets and is grouped into 4 traffic categories: background, best effort, video, voice. Within these categories the sampled packet counters are bucketed by latency in milliseconds.


```ruby
def get_network_client_latency_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id_or_mac_or_ip |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 791 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 791 days after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 791 days. The default is 1 day. |
| resolution |  ``` Optional ```  | The time resolution in seconds for returned data. The valid resolutions are: 86400. The default is 86400. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id_or_mac_or_ip = 'idOrMacOrIp'
collect['id_or_mac_or_ip'] = id_or_mac_or_ip

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 105
collect['timespan'] = timespan

resolution = 105
collect['resolution'] = resolution


result = clients_controller.get_network_client_latency_history(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="config_templates_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConfigTemplatesController") ConfigTemplatesController

### Get singleton instance

The singleton instance of the ``` ConfigTemplatesController ``` class can be accessed from the API Client.

```ruby
configTemplates_controller = client.config_templates
```

### <a name="get_organization_config_templates"></a>![Method: ](https://apidocs.io/img/method.png ".ConfigTemplatesController.get_organization_config_templates") get_organization_config_templates

> List the configuration templates for this organization


```ruby
def get_organization_config_templates(organization_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
organization_id = 'organizationId'

result = configTemplates_controller.get_organization_config_templates(organization_id)

```


### <a name="delete_organization_config_template"></a>![Method: ](https://apidocs.io/img/method.png ".ConfigTemplatesController.delete_organization_config_template") delete_organization_config_template

> Remove a configuration template


```ruby
def delete_organization_config_template(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id


configTemplates_controller.delete_organization_config_template(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="devices_controller"></a>![Class: ](https://apidocs.io/img/class.png ".DevicesController") DevicesController

### Get singleton instance

The singleton instance of the ``` DevicesController ``` class can be accessed from the API Client.

```ruby
devices_controller = client.devices
```

### <a name="get_network_devices"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_devices") get_network_devices

> List the devices in a network


```ruby
def get_network_devices(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = devices_controller.get_network_devices(network_id)

```


### <a name="get_network_device"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_device") get_network_device

> Return a single device


```ruby
def get_network_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial


result = devices_controller.get_network_device(collect)

```


### <a name="update_network_device"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.update_network_device") update_network_device

> Update the attributes of a device


```ruby
def update_network_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| update_network_device |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

update_network_device = UpdateNetworkDeviceModel.new
collect['update_network_device'] = update_network_device


result = devices_controller.update_network_device(collect)

```


### <a name="get_network_device_performance"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_device_performance") get_network_device_performance

> Return the performance score for a single device. Only primary MX devices supported. If no data is available, a 204 error code is returned.


```ruby
def get_network_device_performance(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial


result = devices_controller.get_network_device_performance(collect)

```


### <a name="get_network_device_uplink"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_device_uplink") get_network_device_uplink

> Return the uplink information for a device.


```ruby
def get_network_device_uplink(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial


result = devices_controller.get_network_device_uplink(collect)

```


### <a name="get_network_device_lldp_cdp"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_device_lldp_cdp") get_network_device_lldp_cdp

> List LLDP and CDP information for a device


```ruby
def get_network_device_lldp_cdp(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| timespan |  ``` Optional ```  | The timespan for which LLDP and CDP information will be fetched. Must be in seconds and less than or equal to a month (2592000 seconds). LLDP and CDP information is sent to the Meraki dashboard every 10 minutes. In instances where this LLDP and CDP information matches an existing entry in the Meraki dashboard, the data is updated once every two hours. Meraki recommends querying LLDP and CDP information at an interval slightly greater than two hours, to ensure that unchanged CDP / LLDP information can be queried consistently. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

timespan = 'timespan'
collect['timespan'] = timespan


result = devices_controller.get_network_device_lldp_cdp(collect)

```


### <a name="claim_network_devices"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.claim_network_devices") claim_network_devices

> Claim a device into a network


```ruby
def claim_network_devices(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| claim_network_devices |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

claim_network_devices = ClaimNetworkDevicesModel.new
collect['claim_network_devices'] = claim_network_devices


result = devices_controller.claim_network_devices(collect)

```


### <a name="remove_network_device"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.remove_network_device") remove_network_device

> Remove a single device


```ruby
def remove_network_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial


result = devices_controller.remove_network_device(collect)

```


### <a name="get_network_device_loss_and_latency_history"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.get_network_device_loss_and_latency_history") get_network_device_loss_and_latency_history

> Get the uplink loss percentage and latency in milliseconds for a wired network device.


```ruby
def get_network_device_loss_and_latency_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| ip |  ``` Required ```  | The destination IP used to obtain the requested stats. This is required. |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 365 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 31 days after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 31 days. The default is 1 day. |
| resolution |  ``` Optional ```  | The time resolution in seconds for returned data. The valid resolutions are: 60, 600, 3600, 86400. The default is 60. |
| uplink |  ``` Optional ```  | The WAN uplink used to obtain the requested stats. Valid uplinks are wan1, wan2, cellular. The default is wan1. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

ip = 'ip'
collect['ip'] = ip

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 64
collect['timespan'] = timespan

resolution = 64
collect['resolution'] = resolution

uplink = 'uplink'
collect['uplink'] = uplink


result = devices_controller.get_network_device_loss_and_latency_history(collect)

```


### <a name="reboot_network_device"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.reboot_network_device") reboot_network_device

> Reboot a device


```ruby
def reboot_network_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial


result = devices_controller.reboot_network_device(collect)

```


### <a name="blink_leds_network_device"></a>![Method: ](https://apidocs.io/img/method.png ".DevicesController.blink_leds_network_device") blink_leds_network_device

> Blink the LEDs on a device


```ruby
def blink_leds_network_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| blink_leds_network_device |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

blink_leds_network_device = BlinkLedsNetworkDeviceModel.new
collect['blink_leds_network_device'] = blink_leds_network_device


result = devices_controller.blink_leds_network_device(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mx_cellular_firewall_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXCellularFirewallController") MXCellularFirewallController

### Get singleton instance

The singleton instance of the ``` MXCellularFirewallController ``` class can be accessed from the API Client.

```ruby
mXCellularFirewall_controller = client.mx_cellular_firewall
```

### <a name="get_network_cellular_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXCellularFirewallController.get_network_cellular_firewall_rules") get_network_cellular_firewall_rules

> Return the cellular firewall rules for an MX network


```ruby
def get_network_cellular_firewall_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mXCellularFirewall_controller.get_network_cellular_firewall_rules(network_id)

```


### <a name="update_network_cellular_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXCellularFirewallController.update_network_cellular_firewall_rules") update_network_cellular_firewall_rules

> Update the cellular firewall rules of an MX network


```ruby
def update_network_cellular_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_cellular_firewall_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_cellular_firewall_rules = UpdateNetworkCellularFirewallRulesModel.new
collect['update_network_cellular_firewall_rules'] = update_network_cellular_firewall_rules


result = mXCellularFirewall_controller.update_network_cellular_firewall_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mxl3_firewall_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXL3FirewallController") MXL3FirewallController

### Get singleton instance

The singleton instance of the ``` MXL3FirewallController ``` class can be accessed from the API Client.

```ruby
mXL3Firewall_controller = client.mxl_3_firewall
```

### <a name="get_network_l3_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXL3FirewallController.get_network_l3_firewall_rules") get_network_l3_firewall_rules

> Return the L3 firewall rules for an MX network


```ruby
def get_network_l3_firewall_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mXL3Firewall_controller.get_network_l3_firewall_rules(network_id)

```


### <a name="update_network_l3_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXL3FirewallController.update_network_l3_firewall_rules") update_network_l3_firewall_rules

> Update the L3 firewall rules of an MX network


```ruby
def update_network_l3_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_l3_firewall_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_l3_firewall_rules = UpdateNetworkL3FirewallRulesModel.new
collect['update_network_l3_firewall_rules'] = update_network_l3_firewall_rules


result = mXL3Firewall_controller.update_network_l3_firewall_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mxl7_application_categories_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXL7ApplicationCategoriesController") MXL7ApplicationCategoriesController

### Get singleton instance

The singleton instance of the ``` MXL7ApplicationCategoriesController ``` class can be accessed from the API Client.

```ruby
mXL7ApplicationCategories_controller = client.mxl_7_application_categories
```

### <a name="get_network_l7_firewall_rules_application_categories"></a>![Method: ](https://apidocs.io/img/method.png ".MXL7ApplicationCategoriesController.get_network_l7_firewall_rules_application_categories") get_network_l7_firewall_rules_application_categories

> Return the L7 firewall application categories and their associated applications for an MX network


```ruby
def get_network_l7_firewall_rules_application_categories(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mXL7ApplicationCategories_controller.get_network_l7_firewall_rules_application_categories(network_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mxl7_firewall_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXL7FirewallController") MXL7FirewallController

### Get singleton instance

The singleton instance of the ``` MXL7FirewallController ``` class can be accessed from the API Client.

```ruby
mXL7Firewall_controller = client.mxl_7_firewall
```

### <a name="get_network_l7_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXL7FirewallController.get_network_l7_firewall_rules") get_network_l7_firewall_rules

> List the MX L7 firewall rules for an MX network


```ruby
def get_network_l7_firewall_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mXL7Firewall_controller.get_network_l7_firewall_rules(network_id)

```


### <a name="update_network_l7_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXL7FirewallController.update_network_l7_firewall_rules") update_network_l7_firewall_rules

> Update the MX L7 firewall rules for an MX network


```ruby
def update_network_l7_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_l7_firewall_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_l7_firewall_rules = UpdateNetworkL7FirewallRulesModel.new
collect['update_network_l7_firewall_rules'] = update_network_l7_firewall_rules


result = mXL7Firewall_controller.update_network_l7_firewall_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mxvpn_firewall_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXVPNFirewallController") MXVPNFirewallController

### Get singleton instance

The singleton instance of the ``` MXVPNFirewallController ``` class can be accessed from the API Client.

```ruby
mXVPNFirewall_controller = client.mxvpn_firewall
```

### <a name="get_organization_vpn_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXVPNFirewallController.get_organization_vpn_firewall_rules") get_organization_vpn_firewall_rules

> Return the firewall rules for an organization's site-to-site VPN


```ruby
def get_organization_vpn_firewall_rules(organization_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
organization_id = 'organizationId'

result = mXVPNFirewall_controller.get_organization_vpn_firewall_rules(organization_id)

```


### <a name="update_organization_vpn_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXVPNFirewallController.update_organization_vpn_firewall_rules") update_organization_vpn_firewall_rules

> Update the firewall rules of an organization's site-to-site VPN


```ruby
def update_organization_vpn_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization_vpn_firewall_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

update_organization_vpn_firewall_rules = UpdateOrganizationVpnFirewallRulesModel.new
collect['update_organization_vpn_firewall_rules'] = update_organization_vpn_firewall_rules


result = mXVPNFirewall_controller.update_organization_vpn_firewall_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mrl3_firewall_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MRL3FirewallController") MRL3FirewallController

### Get singleton instance

The singleton instance of the ``` MRL3FirewallController ``` class can be accessed from the API Client.

```ruby
mRL3Firewall_controller = client.mrl_3_firewall
```

### <a name="get_network_ssid_l3_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MRL3FirewallController.get_network_ssid_l3_firewall_rules") get_network_ssid_l3_firewall_rules

> Return the L3 firewall rules for an SSID on an MR network


```ruby
def get_network_ssid_l3_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number


result = mRL3Firewall_controller.get_network_ssid_l3_firewall_rules(collect)

```


### <a name="update_network_ssid_l3_firewall_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MRL3FirewallController.update_network_ssid_l3_firewall_rules") update_network_ssid_l3_firewall_rules

> Update the L3 firewall rules of an SSID on an MR network


```ruby
def update_network_ssid_l3_firewall_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |
| update_network_ssid_l3_firewall_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number

update_network_ssid_l3_firewall_rules = UpdateNetworkSsidL3FirewallRulesModel.new
collect['update_network_ssid_l3_firewall_rules'] = update_network_ssid_l3_firewall_rules


result = mRL3Firewall_controller.update_network_ssid_l3_firewall_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="group_policies_controller"></a>![Class: ](https://apidocs.io/img/class.png ".GroupPoliciesController") GroupPoliciesController

### Get singleton instance

The singleton instance of the ``` GroupPoliciesController ``` class can be accessed from the API Client.

```ruby
groupPolicies_controller = client.group_policies
```

### <a name="get_network_group_policies"></a>![Method: ](https://apidocs.io/img/method.png ".GroupPoliciesController.get_network_group_policies") get_network_group_policies

> List the group policies in a network


```ruby
def get_network_group_policies(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = groupPolicies_controller.get_network_group_policies(network_id)

```


### <a name="create_network_group_policies"></a>![Method: ](https://apidocs.io/img/method.png ".GroupPoliciesController.create_network_group_policies") create_network_group_policies

> Create a group policy


```ruby
def create_network_group_policies(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_group_policies |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_group_policies = CreateNetworkGroupPoliciesModel.new
collect['create_network_group_policies'] = create_network_group_policies


result = groupPolicies_controller.create_network_group_policies(collect)

```


### <a name="get_network_group_policy"></a>![Method: ](https://apidocs.io/img/method.png ".GroupPoliciesController.get_network_group_policy") get_network_group_policy

> Display a group policy


```ruby
def get_network_group_policy(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| group_policy_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

group_policy_id = 'groupPolicyId'
collect['group_policy_id'] = group_policy_id


result = groupPolicies_controller.get_network_group_policy(collect)

```


### <a name="update_network_group_policy"></a>![Method: ](https://apidocs.io/img/method.png ".GroupPoliciesController.update_network_group_policy") update_network_group_policy

> Update a group policy


```ruby
def update_network_group_policy(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| group_policy_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_group_policy |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

group_policy_id = 'groupPolicyId'
collect['group_policy_id'] = group_policy_id

update_network_group_policy = UpdateNetworkGroupPolicyModel.new
collect['update_network_group_policy'] = update_network_group_policy


result = groupPolicies_controller.update_network_group_policy(collect)

```


### <a name="delete_network_group_policy"></a>![Method: ](https://apidocs.io/img/method.png ".GroupPoliciesController.delete_network_group_policy") delete_network_group_policy

> Delete a group policy


```ruby
def delete_network_group_policy(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| group_policy_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

group_policy_id = 'groupPolicyId'
collect['group_policy_id'] = group_policy_id


groupPolicies_controller.delete_network_group_policy(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="http_servers_controller"></a>![Class: ](https://apidocs.io/img/class.png ".HTTPServersController") HTTPServersController

### Get singleton instance

The singleton instance of the ``` HTTPServersController ``` class can be accessed from the API Client.

```ruby
hTTPServers_controller = client.http_servers
```

### <a name="get_network_http_servers"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.get_network_http_servers") get_network_http_servers

> List the HTTP servers for a network


```ruby
def get_network_http_servers(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = hTTPServers_controller.get_network_http_servers(network_id)

```


### <a name="create_network_http_servers"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.create_network_http_servers") create_network_http_servers

> Add an HTTP server


```ruby
def create_network_http_servers(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_http_servers |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_http_servers = CreateNetworkHttpServersModel.new
collect['create_network_http_servers'] = create_network_http_servers


result = hTTPServers_controller.create_network_http_servers(collect)

```


### <a name="get_network_http_server"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.get_network_http_server") get_network_http_server

> Return an HTTP server


```ruby
def get_network_http_server(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = hTTPServers_controller.get_network_http_server(collect)

```


### <a name="update_network_http_server"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.update_network_http_server") update_network_http_server

> Update an HTTP server


```ruby
def update_network_http_server(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_http_server |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

update_network_http_server = UpdateNetworkHttpServerModel.new
collect['update_network_http_server'] = update_network_http_server


result = hTTPServers_controller.update_network_http_server(collect)

```


### <a name="delete_network_http_server"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.delete_network_http_server") delete_network_http_server

> Delete an HTTP server


```ruby
def delete_network_http_server(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


hTTPServers_controller.delete_network_http_server(collect)

```


### <a name="create_network_http_servers_webhook_tests"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.create_network_http_servers_webhook_tests") create_network_http_servers_webhook_tests

> Send a test webhook


```ruby
def create_network_http_servers_webhook_tests(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_http_servers_webhook_tests |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_http_servers_webhook_tests = CreateNetworkHttpServersWebhookTestsModel.new
collect['create_network_http_servers_webhook_tests'] = create_network_http_servers_webhook_tests


result = hTTPServers_controller.create_network_http_servers_webhook_tests(collect)

```


### <a name="get_network_http_servers_webhook_test"></a>![Method: ](https://apidocs.io/img/method.png ".HTTPServersController.get_network_http_servers_webhook_test") get_network_http_servers_webhook_test

> Return the status of a webhook test


```ruby
def get_network_http_servers_webhook_test(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = hTTPServers_controller.get_network_http_servers_webhook_test(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="meraki_auth_users_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MerakiAuthUsersController") MerakiAuthUsersController

### Get singleton instance

The singleton instance of the ``` MerakiAuthUsersController ``` class can be accessed from the API Client.

```ruby
merakiAuthUsers_controller = client.meraki_auth_users
```

### <a name="get_network_meraki_auth_users"></a>![Method: ](https://apidocs.io/img/method.png ".MerakiAuthUsersController.get_network_meraki_auth_users") get_network_meraki_auth_users

> List the splash or RADIUS users configured under Meraki Authentication for a network


```ruby
def get_network_meraki_auth_users(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = merakiAuthUsers_controller.get_network_meraki_auth_users(network_id)

```


### <a name="get_network_meraki_auth_user"></a>![Method: ](https://apidocs.io/img/method.png ".MerakiAuthUsersController.get_network_meraki_auth_user") get_network_meraki_auth_user

> Return the Meraki Auth splash or RADIUS user


```ruby
def get_network_meraki_auth_user(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = merakiAuthUsers_controller.get_network_meraki_auth_user(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="organizations_controller"></a>![Class: ](https://apidocs.io/img/class.png ".OrganizationsController") OrganizationsController

### Get singleton instance

The singleton instance of the ``` OrganizationsController ``` class can be accessed from the API Client.

```ruby
organizations_controller = client.organizations
```

### <a name="get_organizations"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organizations") get_organizations

> List the organizations that the user has privileges on


```ruby
def get_organizations; end
```

#### Example Usage

```ruby

result = organizations_controller.get_organizations()

```


### <a name="create_organizations"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.create_organizations") create_organizations

> Create a new organization


```ruby
def create_organizations(create_organizations = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| create_organizations |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
create_organizations = CreateOrganizationsModel.new

result = organizations_controller.create_organizations(create_organizations)

```


### <a name="get_organization"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization") get_organization

> Return an organization


```ruby
def get_organization(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'

result = organizations_controller.get_organization(id)

```


### <a name="update_organization"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.update_organization") update_organization

> Update an organization


```ruby
def update_organization(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

update_organization = UpdateOrganizationModel.new
collect['update_organization'] = update_organization


result = organizations_controller.update_organization(collect)

```


### <a name="clone_organization"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.clone_organization") clone_organization

> Create a new organization by cloning the addressed organization


```ruby
def clone_organization(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| clone_organization |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

clone_organization = CloneOrganizationModel.new
collect['clone_organization'] = clone_organization


result = organizations_controller.clone_organization(collect)

```


### <a name="get_organization_license_state"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_license_state") get_organization_license_state

> Return the license state for an organization


```ruby
def get_organization_license_state(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'

result = organizations_controller.get_organization_license_state(id)

```


### <a name="get_organization_inventory"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_inventory") get_organization_inventory

> Return the inventory for an organization


```ruby
def get_organization_inventory(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'

result = organizations_controller.get_organization_inventory(id)

```


### <a name="get_organization_device_statuses"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_device_statuses") get_organization_device_statuses

> List the status of every Meraki device in the organization


```ruby
def get_organization_device_statuses(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'

result = organizations_controller.get_organization_device_statuses(id)

```


### <a name="get_organization_snmp"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_snmp") get_organization_snmp

> Return the SNMP settings for an organization


```ruby
def get_organization_snmp(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'

result = organizations_controller.get_organization_snmp(id)

```


### <a name="update_organization_snmp"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.update_organization_snmp") update_organization_snmp

> Update the SNMP settings for an organization


```ruby
def update_organization_snmp(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization_snmp |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

update_organization_snmp = UpdateOrganizationSnmpModel.new
collect['update_organization_snmp'] = update_organization_snmp


result = organizations_controller.update_organization_snmp(collect)

```


### <a name="claim_organization"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.claim_organization") claim_organization

> Claim a device, license key, or order into an organization. When claiming by order, all devices and licenses in the order will be claimed; licenses will be added to the organization and devices will be placed in the organization's inventory. These three types of claims are mutually exclusive and cannot be performed in one request.


```ruby
def claim_organization(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| claim_organization |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

claim_organization = ClaimOrganizationModel.new
collect['claim_organization'] = claim_organization


result = organizations_controller.claim_organization(collect)

```


### <a name="get_organization_uplinks_loss_and_latency"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_uplinks_loss_and_latency") get_organization_uplinks_loss_and_latency

> Return the uplink loss and latency for every MX in the organization from 2 - 7 minutes ago


```ruby
def get_organization_uplinks_loss_and_latency(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| uplink |  ``` Optional ```  | Optional filter for a specific WAN uplink. Valid uplinks are wan1, wan2, cellular. Default will return all uplinks. |
| ip |  ``` Optional ```  | Optional filter for a specific destination IP. Default will return all destination IPs. |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

uplink = 'uplink'
collect['uplink'] = uplink

ip = 'ip'
collect['ip'] = ip


result = organizations_controller.get_organization_uplinks_loss_and_latency(collect)

```


### <a name="get_organization_third_party_vpn_peers"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.get_organization_third_party_vpn_peers") get_organization_third_party_vpn_peers

> Return the third party VPN peers for an organization


```ruby
def get_organization_third_party_vpn_peers(organization_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
organization_id = 'organizationId'

result = organizations_controller.get_organization_third_party_vpn_peers(organization_id)

```


### <a name="update_organization_third_party_vpn_peers"></a>![Method: ](https://apidocs.io/img/method.png ".OrganizationsController.update_organization_third_party_vpn_peers") update_organization_third_party_vpn_peers

> Update the third party VPN peers for an organization


```ruby
def update_organization_third_party_vpn_peers(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization_third_party_vpn_peers |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

update_organization_third_party_vpn_peers = UpdateOrganizationThirdPartyVPNPeersModel.new
collect['update_organization_third_party_vpn_peers'] = update_organization_third_party_vpn_peers


result = organizations_controller.update_organization_third_party_vpn_peers(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="pii_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PIIController") PIIController

### Get singleton instance

The singleton instance of the ``` PIIController ``` class can be accessed from the API Client.

```ruby
pII_controller = client.pii
```

### <a name="get_network_pii_pii_keys"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.get_network_pii_pii_keys") get_network_pii_pii_keys

> List the keys required to access Personally Identifiable Information (PII) for a given identifier. Exactly one identifier will be accepted. If the organization contains org-wide Systems Manager users matching the key provided then there will be an entry with the key "0" containing the applicable keys.
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/piiKeys
> ```


```ruby
def get_network_pii_pii_keys(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| username |  ``` Optional ```  | The username of a Systems Manager user |
| email |  ``` Optional ```  | The email of a network user account or a Systems Manager device |
| mac |  ``` Optional ```  | The MAC of a network client device or a Systems Manager device |
| serial |  ``` Optional ```  | The serial of a Systems Manager device |
| imei |  ``` Optional ```  | The IMEI of a Systems Manager device |
| bluetooth_mac |  ``` Optional ```  | The MAC of a Bluetooth client |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

username = 'username'
collect['username'] = username

email = 'email'
collect['email'] = email

mac = 'mac'
collect['mac'] = mac

serial = 'serial'
collect['serial'] = serial

imei = 'imei'
collect['imei'] = imei

bluetooth_mac = 'bluetoothMac'
collect['bluetooth_mac'] = bluetooth_mac


result = pII_controller.get_network_pii_pii_keys(collect)

```


### <a name="get_network_pii_sm_devices_for_key"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.get_network_pii_sm_devices_for_key") get_network_pii_sm_devices_for_key

> Given a piece of Personally Identifiable Information (PII), return the Systems Manager device ID(s) associated with that identifier. These device IDs can be used with the Systems Manager API endpoints to retrieve device details. Exactly one identifier will be accepted.
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/smDevicesForKey
> ```


```ruby
def get_network_pii_sm_devices_for_key(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| username |  ``` Optional ```  | The username of a Systems Manager user |
| email |  ``` Optional ```  | The email of a network user account or a Systems Manager device |
| mac |  ``` Optional ```  | The MAC of a network client device or a Systems Manager device |
| serial |  ``` Optional ```  | The serial of a Systems Manager device |
| imei |  ``` Optional ```  | The IMEI of a Systems Manager device |
| bluetooth_mac |  ``` Optional ```  | The MAC of a Bluetooth client |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

username = 'username'
collect['username'] = username

email = 'email'
collect['email'] = email

mac = 'mac'
collect['mac'] = mac

serial = 'serial'
collect['serial'] = serial

imei = 'imei'
collect['imei'] = imei

bluetooth_mac = 'bluetoothMac'
collect['bluetooth_mac'] = bluetooth_mac


result = pII_controller.get_network_pii_sm_devices_for_key(collect)

```


### <a name="get_network_pii_sm_owners_for_key"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.get_network_pii_sm_owners_for_key") get_network_pii_sm_owners_for_key

> Given a piece of Personally Identifiable Information (PII), return the Systems Manager owner ID(s) associated with that identifier. These owner IDs can be used with the Systems Manager API endpoints to retrieve owner details. Exactly one identifier will be accepted.
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/smOwnersForKey
> ```


```ruby
def get_network_pii_sm_owners_for_key(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| username |  ``` Optional ```  | The username of a Systems Manager user |
| email |  ``` Optional ```  | The email of a network user account or a Systems Manager device |
| mac |  ``` Optional ```  | The MAC of a network client device or a Systems Manager device |
| serial |  ``` Optional ```  | The serial of a Systems Manager device |
| imei |  ``` Optional ```  | The IMEI of a Systems Manager device |
| bluetooth_mac |  ``` Optional ```  | The MAC of a Bluetooth client |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

username = 'username'
collect['username'] = username

email = 'email'
collect['email'] = email

mac = 'mac'
collect['mac'] = mac

serial = 'serial'
collect['serial'] = serial

imei = 'imei'
collect['imei'] = imei

bluetooth_mac = 'bluetoothMac'
collect['bluetooth_mac'] = bluetooth_mac


result = pII_controller.get_network_pii_sm_owners_for_key(collect)

```


### <a name="get_network_pii_requests"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.get_network_pii_requests") get_network_pii_requests

> List the PII requests for this network or organization
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/requests
> ```


```ruby
def get_network_pii_requests(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = pII_controller.get_network_pii_requests(network_id)

```


### <a name="create_network_pii_requests"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.create_network_pii_requests") create_network_pii_requests

> Submit a new delete or restrict processing PII request
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/requests
> ```


```ruby
def create_network_pii_requests(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_pii_requests |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_pii_requests = CreateNetworkPiiRequestsModel.new
collect['create_network_pii_requests'] = create_network_pii_requests


result = pII_controller.create_network_pii_requests(collect)

```


### <a name="get_network_pii_request"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.get_network_pii_request") get_network_pii_request

> Return a PII request
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/requests/{id}
> ```


```ruby
def get_network_pii_request(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = pII_controller.get_network_pii_request(collect)

```


### <a name="delete_network_pii_request"></a>![Method: ](https://apidocs.io/img/method.png ".PIIController.delete_network_pii_request") delete_network_pii_request

> Delete a restrict processing PII request
> 
> ## ALTERNATE PATH
> 
> ```
> /organizations/{organizationId}/pii/requests/{id}
> ```


```ruby
def delete_network_pii_request(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


pII_controller.delete_network_pii_request(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="saml_roles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SAMLRolesController") SAMLRolesController

### Get singleton instance

The singleton instance of the ``` SAMLRolesController ``` class can be accessed from the API Client.

```ruby
sAMLRoles_controller = client.saml_roles
```

### <a name="get_organization_saml_roles"></a>![Method: ](https://apidocs.io/img/method.png ".SAMLRolesController.get_organization_saml_roles") get_organization_saml_roles

> List the SAML roles for this organization


```ruby
def get_organization_saml_roles(organization_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
organization_id = 'organizationId'

result = sAMLRoles_controller.get_organization_saml_roles(organization_id)

```


### <a name="create_organization_saml_roles"></a>![Method: ](https://apidocs.io/img/method.png ".SAMLRolesController.create_organization_saml_roles") create_organization_saml_roles

> Create a SAML role


```ruby
def create_organization_saml_roles(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| create_organization_saml_roles |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

create_organization_saml_roles = CreateOrganizationSamlRolesModel.new
collect['create_organization_saml_roles'] = create_organization_saml_roles


result = sAMLRoles_controller.create_organization_saml_roles(collect)

```


### <a name="get_organization_saml_role"></a>![Method: ](https://apidocs.io/img/method.png ".SAMLRolesController.get_organization_saml_role") get_organization_saml_role

> Return a SAML role


```ruby
def get_organization_saml_role(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id


result = sAMLRoles_controller.get_organization_saml_role(collect)

```


### <a name="update_organization_saml_role"></a>![Method: ](https://apidocs.io/img/method.png ".SAMLRolesController.update_organization_saml_role") update_organization_saml_role

> Update a SAML role


```ruby
def update_organization_saml_role(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| update_organization_saml_role |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id

update_organization_saml_role = UpdateOrganizationSamlRoleModel.new
collect['update_organization_saml_role'] = update_organization_saml_role


result = sAMLRoles_controller.update_organization_saml_role(collect)

```


### <a name="delete_organization_saml_role"></a>![Method: ](https://apidocs.io/img/method.png ".SAMLRolesController.delete_organization_saml_role") delete_organization_saml_role

> Remove a SAML role


```ruby
def delete_organization_saml_role(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| organization_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

organization_id = 'organizationId'
collect['organization_id'] = organization_id

id = 'id'
collect['id'] = id


sAMLRoles_controller.delete_organization_saml_role(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="client_security_events_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ClientSecurityEventsController") ClientSecurityEventsController

### Get singleton instance

The singleton instance of the ``` ClientSecurityEventsController ``` class can be accessed from the API Client.

```ruby
clientSecurityEvents_controller = client.client_security_events
```

### <a name="get_network_client_security_events"></a>![Method: ](https://apidocs.io/img/method.png ".ClientSecurityEventsController.get_network_client_security_events") get_network_client_security_events

> List the security events


```ruby
def get_network_client_security_events(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| client_id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Required ```  | The number of entries per page returned. Acceptable range is 3 - 1000. |
| t0 |  ``` Optional ```  | The beginning of the timespan for the data. The maximum lookback period is 791 days from today. |
| t1 |  ``` Optional ```  | The end of the timespan for the data. t1 can be a maximum of 791 days after t0. |
| timespan |  ``` Optional ```  | The timespan for which the information will be fetched. If specifying timespan, do not specify parameters t0 and t1. The value must be in seconds and be less than or equal to 791 days. The default is 31 days. |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, prev, or next page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

client_id = 'clientId'
collect['client_id'] = client_id

per_page = 155
collect['per_page'] = per_page

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

timespan = 155
collect['timespan'] = timespan

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = clientSecurityEvents_controller.get_network_client_security_events(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="malware_settings_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MalwareSettingsController") MalwareSettingsController

### Get singleton instance

The singleton instance of the ``` MalwareSettingsController ``` class can be accessed from the API Client.

```ruby
malwareSettings_controller = client.malware_settings
```

### <a name="get_network_security_malware_settings"></a>![Method: ](https://apidocs.io/img/method.png ".MalwareSettingsController.get_network_security_malware_settings") get_network_security_malware_settings

> Returns all supported malware settings for an MX network


```ruby
def get_network_security_malware_settings(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = malwareSettings_controller.get_network_security_malware_settings(network_id)

```


### <a name="update_network_security_malware_settings"></a>![Method: ](https://apidocs.io/img/method.png ".MalwareSettingsController.update_network_security_malware_settings") update_network_security_malware_settings

> Set the supported malware settings for an MX network


```ruby
def update_network_security_malware_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_security_malware_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_security_malware_settings = UpdateNetworkSecurityMalwareSettingsModel.new
collect['update_network_security_malware_settings'] = update_network_security_malware_settings


result = malwareSettings_controller.update_network_security_malware_settings(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="named_tag_scope_controller"></a>![Class: ](https://apidocs.io/img/class.png ".NamedTagScopeController") NamedTagScopeController

### Get singleton instance

The singleton instance of the ``` NamedTagScopeController ``` class can be accessed from the API Client.

```ruby
namedTagScope_controller = client.named_tag_scope
```

### <a name="get_network_sm_target_groups"></a>![Method: ](https://apidocs.io/img/method.png ".NamedTagScopeController.get_network_sm_target_groups") get_network_sm_target_groups

> List the target groups in this network


```ruby
def get_network_sm_target_groups(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| with_details |  ``` Optional ```  | Boolean indicating if the the ids of the devices or users scoped by the target group should be included in the response |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

with_details = 'withDetails'
collect['with_details'] = with_details


result = namedTagScope_controller.get_network_sm_target_groups(collect)

```


### <a name="create_network_sm_target_groups"></a>![Method: ](https://apidocs.io/img/method.png ".NamedTagScopeController.create_network_sm_target_groups") create_network_sm_target_groups

> Add a target group


```ruby
def create_network_sm_target_groups(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_sm_target_groups |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_sm_target_groups = CreateNetworkSmTargetGroupsModel.new
collect['create_network_sm_target_groups'] = create_network_sm_target_groups


result = namedTagScope_controller.create_network_sm_target_groups(collect)

```


### <a name="get_network_sm_target_group"></a>![Method: ](https://apidocs.io/img/method.png ".NamedTagScopeController.get_network_sm_target_group") get_network_sm_target_group

> Return a target group


```ruby
def get_network_sm_target_group(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| target_group_id |  ``` Required ```  | TODO: Add a parameter description |
| with_details |  ``` Optional ```  | Boolean indicating if the the ids of devices or users scoped by the target group should be included in the response |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

target_group_id = 'targetGroupId'
collect['target_group_id'] = target_group_id

with_details = 'withDetails'
collect['with_details'] = with_details


result = namedTagScope_controller.get_network_sm_target_group(collect)

```


### <a name="update_network_sm_target_group"></a>![Method: ](https://apidocs.io/img/method.png ".NamedTagScopeController.update_network_sm_target_group") update_network_sm_target_group

> Update a target group


```ruby
def update_network_sm_target_group(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| target_group_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_target_group |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

target_group_id = 'targetGroupId'
collect['target_group_id'] = target_group_id

update_network_sm_target_group = UpdateNetworkSmTargetGroupModel.new
collect['update_network_sm_target_group'] = update_network_sm_target_group


result = namedTagScope_controller.update_network_sm_target_group(collect)

```


### <a name="delete_network_sm_target_group"></a>![Method: ](https://apidocs.io/img/method.png ".NamedTagScopeController.delete_network_sm_target_group") delete_network_sm_target_group

> Delete a target group from a network


```ruby
def delete_network_sm_target_group(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| target_group_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

target_group_id = 'targetGroupId'
collect['target_group_id'] = target_group_id


namedTagScope_controller.delete_network_sm_target_group(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sm_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMController") SMController

### Get singleton instance

The singleton instance of the ``` SMController ``` class can be accessed from the API Client.

```ruby
sM_controller = client.sm
```

### <a name="create_network_sm_profile_clarity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.create_network_sm_profile_clarity") create_network_sm_profile_clarity

> Create a new profile containing a Cisco Clarity payload


```ruby
def create_network_sm_profile_clarity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_sm_profile_clarity |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

create_network_sm_profile_clarity = CreateNetworkSmProfileClarityModel.new
collect['create_network_sm_profile_clarity'] = create_network_sm_profile_clarity


result = sM_controller.create_network_sm_profile_clarity(collect)

```


### <a name="update_network_sm_profile_clarity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_profile_clarity") update_network_sm_profile_clarity

> Update an existing profile containing a Cisco Clarity payload


```ruby
def update_network_sm_profile_clarity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_profile_clarity |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id

update_network_sm_profile_clarity = UpdateNetworkSmProfileClarityModel.new
collect['update_network_sm_profile_clarity'] = update_network_sm_profile_clarity


result = sM_controller.update_network_sm_profile_clarity(collect)

```


### <a name="add_network_sm_profile_clarity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.add_network_sm_profile_clarity") add_network_sm_profile_clarity

> Add a Cisco Clarity payload to an existing profile


```ruby
def add_network_sm_profile_clarity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |
| add_network_sm_profile_clarity |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id

add_network_sm_profile_clarity = AddNetworkSmProfileClarityModel.new
collect['add_network_sm_profile_clarity'] = add_network_sm_profile_clarity


result = sM_controller.add_network_sm_profile_clarity(collect)

```


### <a name="get_network_sm_profile_clarity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_profile_clarity") get_network_sm_profile_clarity

> Get details for a Cisco Clarity payload


```ruby
def get_network_sm_profile_clarity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id


result = sM_controller.get_network_sm_profile_clarity(collect)

```


### <a name="delete_network_sm_profile_clarity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.delete_network_sm_profile_clarity") delete_network_sm_profile_clarity

> Delete a Cisco Clarity payload. Deletes the entire profile if it's empty after removing the payload.


```ruby
def delete_network_sm_profile_clarity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id


sM_controller.delete_network_sm_profile_clarity(collect)

```


### <a name="create_network_sm_profile_umbrella"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.create_network_sm_profile_umbrella") create_network_sm_profile_umbrella

> Create a new profile containing a Cisco Umbrella payload


```ruby
def create_network_sm_profile_umbrella(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_sm_profile_umbrella |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

create_network_sm_profile_umbrella = CreateNetworkSmProfileUmbrellaModel.new
collect['create_network_sm_profile_umbrella'] = create_network_sm_profile_umbrella


result = sM_controller.create_network_sm_profile_umbrella(collect)

```


### <a name="update_network_sm_profile_umbrella"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_profile_umbrella") update_network_sm_profile_umbrella

> Update an existing profile containing a Cisco Umbrella payload


```ruby
def update_network_sm_profile_umbrella(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_profile_umbrella |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id

update_network_sm_profile_umbrella = UpdateNetworkSmProfileUmbrellaModel.new
collect['update_network_sm_profile_umbrella'] = update_network_sm_profile_umbrella


result = sM_controller.update_network_sm_profile_umbrella(collect)

```


### <a name="add_network_sm_profile_umbrella"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.add_network_sm_profile_umbrella") add_network_sm_profile_umbrella

> Add a Cisco Umbrella payload to an existing profile


```ruby
def add_network_sm_profile_umbrella(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |
| add_network_sm_profile_umbrella |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id

add_network_sm_profile_umbrella = AddNetworkSmProfileUmbrellaModel.new
collect['add_network_sm_profile_umbrella'] = add_network_sm_profile_umbrella


result = sM_controller.add_network_sm_profile_umbrella(collect)

```


### <a name="get_network_sm_profile_umbrella"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_profile_umbrella") get_network_sm_profile_umbrella

> Get details for a Cisco Umbrella payload


```ruby
def get_network_sm_profile_umbrella(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id


result = sM_controller.get_network_sm_profile_umbrella(collect)

```


### <a name="delete_network_sm_profile_umbrella"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.delete_network_sm_profile_umbrella") delete_network_sm_profile_umbrella

> Delete a Cisco Umbrella payload. Deletes the entire profile if it's empty after removing the payload


```ruby
def delete_network_sm_profile_umbrella(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| profile_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

profile_id = 'profileId'
collect['profile_id'] = profile_id


sM_controller.delete_network_sm_profile_umbrella(collect)

```


### <a name="create_network_sm_app_polaris"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.create_network_sm_app_polaris") create_network_sm_app_polaris

> Create a new Polaris app


```ruby
def create_network_sm_app_polaris(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_sm_app_polaris |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

create_network_sm_app_polaris = CreateNetworkSmAppPolarisModel.new
collect['create_network_sm_app_polaris'] = create_network_sm_app_polaris


result = sM_controller.create_network_sm_app_polaris(collect)

```


### <a name="get_network_sm_app_polaris"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_app_polaris") get_network_sm_app_polaris

> Get details for a Cisco Polaris app if it exists


```ruby
def get_network_sm_app_polaris(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| bundle_id |  ``` Optional ```  | The bundle ID of the app to be found, defaults to com.cisco.ciscosecurity.app |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

bundle_id = 'bundleId'
collect['bundle_id'] = bundle_id


result = sM_controller.get_network_sm_app_polaris(collect)

```


### <a name="update_network_sm_app_polari"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_app_polari") update_network_sm_app_polari

> Update an existing Polaris app


```ruby
def update_network_sm_app_polari(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| app_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_app_polari |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

app_id = 'appId'
collect['app_id'] = app_id

update_network_sm_app_polari = UpdateNetworkSmAppPolariModel.new
collect['update_network_sm_app_polari'] = update_network_sm_app_polari


result = sM_controller.update_network_sm_app_polari(collect)

```


### <a name="delete_network_sm_app_polari"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.delete_network_sm_app_polari") delete_network_sm_app_polari

> Delete a Cisco Polaris app


```ruby
def delete_network_sm_app_polari(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| app_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

app_id = 'appId'
collect['app_id'] = app_id


sM_controller.delete_network_sm_app_polari(collect)

```


### <a name="get_network_sm_devices"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_devices") get_network_sm_devices

> List the devices enrolled in an SM network with various specified fields and filters


```ruby
def get_network_sm_devices(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| fields |  ``` Optional ```  | Additional fields that will be displayed for each device. Multiple fields can be passed in as comma separated values.
      The default fields are: id, name, tags, ssid, wifiMac, osName, systemModel, uuid, and serialNumber. The additional fields are: ip,
      systemType, availableDeviceCapacity, kioskAppName, biosVersion, lastConnected, missingAppsCount, userSuppliedAddress, location, lastUser,
      ownerEmail, ownerUsername, publicIp, phoneNumber, diskInfoJson, deviceCapacity, isManaged, hadMdm, isSupervised, meid, imei, iccid,
      simCarrierNetwork, cellularDataUsed, isHotspotEnabled, createdAt, batteryEstCharge, quarantined, avName, avRunning, asName, fwName,
      isRooted, loginRequired, screenLockEnabled, screenLockDelay, autoLoginDisabled, autoTags, hasMdm, hasDesktopAgent, diskEncryptionEnabled,
      hardwareEncryptionCaps, passCodeLock, usesHardwareKeystore, and androidSecurityPatchVersion. |
| wifi_macs |  ``` Optional ```  | Filter devices by wifi mac(s). Multiple wifi macs can be passed in as comma separated values. |
| serials |  ``` Optional ```  | Filter devices by serial(s). Multiple serials can be passed in as comma separated values. |
| ids |  ``` Optional ```  | Filter devices by id(s). Multiple ids can be passed in as comma separated values. |
| scope |  ``` Optional ```  | Specify a scope (one of all, none, withAny, withAll, withoutAny, or withoutAll) and a set of tags as comma separated values. |
| batch_token |  ``` Optional ```  | On networks with more than 1000 devices, the device list will be limited to 1000 devices per query.
      If there are more devices to be seen, a batch token will be returned as a part of the device list. To see the remainder of
      the devices, pass in the batchToken as a parameter in the next request. Requests made with the batchToken do not require
      additional parameters as the batchToken includes the parameters passed in with the original request. Additional parameters
      passed in with the batchToken will be ignored. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

fields = 'fields'
collect['fields'] = fields

wifi_macs = 'wifiMacs'
collect['wifi_macs'] = wifi_macs

serials = 'serials'
collect['serials'] = serials

ids = 'ids'
collect['ids'] = ids

scope = 'scope'
collect['scope'] = scope

batch_token = 'batchToken'
collect['batch_token'] = batch_token


result = sM_controller.get_network_sm_devices(collect)

```


### <a name="get_network_sm_users"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_users") get_network_sm_users

> List the owners in an SM network with various specified fields and filters


```ruby
def get_network_sm_users(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| usernames |  ``` Optional ```  | Filter users by username(s). Multiple usernames can be passed in as comma separated values. |
| emails |  ``` Optional ```  | Filter users by email(s). Multiple emails can be passed in as comma separated values. |
| ids |  ``` Optional ```  | Filter users by id(s). Multiple ids can be passed in as comma separated values. |
| scope |  ``` Optional ```  | Specify a scope (one of all, none, withAny, withAll, withoutAny, or withoutAll) and a set of tags as comma separated values. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

usernames = 'usernames'
collect['usernames'] = usernames

emails = 'emails'
collect['emails'] = emails

ids = 'ids'
collect['ids'] = ids

scope = 'scope'
collect['scope'] = scope


result = sM_controller.get_network_sm_users(collect)

```


### <a name="get_network_sm_user_device_profiles"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_user_device_profiles") get_network_sm_user_device_profiles

> Get the profiles associated with a user


```ruby
def get_network_sm_user_device_profiles(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_user_device_profiles(collect)

```


### <a name="get_network_sm_device_profiles"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_device_profiles") get_network_sm_device_profiles

> Get the profiles associated with a device


```ruby
def get_network_sm_device_profiles(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_device_profiles(collect)

```


### <a name="get_network_sm_user_softwares"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_user_softwares") get_network_sm_user_softwares

> Get a list of softwares associated with a user


```ruby
def get_network_sm_user_softwares(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_user_softwares(collect)

```


### <a name="get_network_sm_softwares"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_softwares") get_network_sm_softwares

> Get a list of softwares associated with a device


```ruby
def get_network_sm_softwares(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_softwares(collect)

```


### <a name="get_network_sm_network_adapters"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_network_adapters") get_network_sm_network_adapters

> List the network adapters of a device


```ruby
def get_network_sm_network_adapters(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_network_adapters(collect)

```


### <a name="get_network_sm_wlan_lists"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_wlan_lists") get_network_sm_wlan_lists

> List the saved SSID names on a device


```ruby
def get_network_sm_wlan_lists(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_wlan_lists(collect)

```


### <a name="get_network_sm_security_centers"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_security_centers") get_network_sm_security_centers

> List the security centers on a device


```ruby
def get_network_sm_security_centers(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_security_centers(collect)

```


### <a name="get_network_sm_restrictions"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_restrictions") get_network_sm_restrictions

> List the restrictions on a device


```ruby
def get_network_sm_restrictions(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_restrictions(collect)

```


### <a name="get_network_sm_certs"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_certs") get_network_sm_certs

> List the certs on a device


```ruby
def get_network_sm_certs(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_certs(collect)

```


### <a name="update_network_sm_devices_tags"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_devices_tags") update_network_sm_devices_tags

> Add, delete, or update the tags of a set of devices


```ruby
def update_network_sm_devices_tags(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_devices_tags |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_devices_tags = UpdateNetworkSmDevicesTagsModel.new
collect['update_network_sm_devices_tags'] = update_network_sm_devices_tags


result = sM_controller.update_network_sm_devices_tags(collect)

```


### <a name="update_network_sm_device_fields"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_device_fields") update_network_sm_device_fields

> Modify the fields of a device


```ruby
def update_network_sm_device_fields(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_device_fields |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_device_fields = UpdateNetworkSmDeviceFieldsModel.new
collect['update_network_sm_device_fields'] = update_network_sm_device_fields


result = sM_controller.update_network_sm_device_fields(collect)

```


### <a name="update_network_sm_devices_lock"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_devices_lock") update_network_sm_devices_lock

> Lock a set of devices


```ruby
def update_network_sm_devices_lock(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_devices_lock |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_devices_lock = UpdateNetworkSmDevicesLockModel.new
collect['update_network_sm_devices_lock'] = update_network_sm_devices_lock


result = sM_controller.update_network_sm_devices_lock(collect)

```


### <a name="update_network_sm_device_wipe"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_device_wipe") update_network_sm_device_wipe

> Wipe a device


```ruby
def update_network_sm_device_wipe(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_device_wipe |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_device_wipe = UpdateNetworkSmDeviceWipeModel.new
collect['update_network_sm_device_wipe'] = update_network_sm_device_wipe


result = sM_controller.update_network_sm_device_wipe(collect)

```


### <a name="update_network_sm_devices_checkin"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_devices_checkin") update_network_sm_devices_checkin

> Force check-in a set of devices


```ruby
def update_network_sm_devices_checkin(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_devices_checkin |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_devices_checkin = UpdateNetworkSmDevicesCheckinModel.new
collect['update_network_sm_devices_checkin'] = update_network_sm_devices_checkin


result = sM_controller.update_network_sm_devices_checkin(collect)

```


### <a name="update_network_sm_devices_move"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.update_network_sm_devices_move") update_network_sm_devices_move

> Move a set of devices to a new network


```ruby
def update_network_sm_devices_move(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_sm_devices_move |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

update_network_sm_devices_move = UpdateNetworkSmDevicesMoveModel.new
collect['update_network_sm_devices_move'] = update_network_sm_devices_move


result = sM_controller.update_network_sm_devices_move(collect)

```


### <a name="unenroll_network_sm_device"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.unenroll_network_sm_device") unenroll_network_sm_device

> Unenroll a device


```ruby
def unenroll_network_sm_device(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| device_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

device_id = 'deviceId'
collect['device_id'] = device_id


result = sM_controller.unenroll_network_sm_device(collect)

```


### <a name="get_network_sm_profiles"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_profiles") get_network_sm_profiles

> List all the profiles in the network


```ruby
def get_network_sm_profiles(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'network_id'

result = sM_controller.get_network_sm_profiles(network_id)

```


### <a name="get_network_sm_cellular_usage_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_cellular_usage_history") get_network_sm_cellular_usage_history

> Return the client's daily cellular data usage history. Usage data is in kilobytes.


```ruby
def get_network_sm_cellular_usage_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id


result = sM_controller.get_network_sm_cellular_usage_history(collect)

```


### <a name="get_network_sm_performance_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_performance_history") get_network_sm_performance_history

> Return historical records of various Systems Manager client metrics for desktop devices.


```ruby
def get_network_sm_performance_history(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

per_page = 'perPage'
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = sM_controller.get_network_sm_performance_history(collect)

```


### <a name="get_network_sm_desktop_logs"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_desktop_logs") get_network_sm_desktop_logs

> Return historical records of various Systems Manager network connection details for desktop devices.


```ruby
def get_network_sm_desktop_logs(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

per_page = 'perPage'
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = sM_controller.get_network_sm_desktop_logs(collect)

```


### <a name="get_network_sm_device_command_logs"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_device_command_logs") get_network_sm_device_command_logs

>     Return historical records of commands sent to Systems Manager devices.
>     <p>Note that this will include the name of the Dashboard user who initiated the command if it was generated
>     by a Dashboard admin rather than the automatic behavior of the system; you may wish to filter this out
>     of any reports.</p>
> 


```ruby
def get_network_sm_device_command_logs(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

per_page = 'perPage'
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = sM_controller.get_network_sm_device_command_logs(collect)

```


### <a name="get_network_sm_connectivity"></a>![Method: ](https://apidocs.io/img/method.png ".SMController.get_network_sm_connectivity") get_network_sm_connectivity

> Returns historical connectivity data (whether a device is regularly checking in to Dashboard).


```ruby
def get_network_sm_connectivity(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | TODO: Add a parameter description |
| per_page |  ``` Optional ```  | The number of entries per page returned |
| starting_after |  ``` Optional ```  | A token used by the server to indicate the start of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |
| ending_before |  ``` Optional ```  | A token used by the server to indicate the end of the page. Often this is a timestamp or an ID but it is not limited to those. This parameter should not be defined by client applications. The link for the first, last, next or prev page in the HTTP Link header should define it. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'network_id'
collect['network_id'] = network_id

id = 'id'
collect['id'] = id

per_page = 'perPage'
collect['per_page'] = per_page

starting_after = 'startingAfter'
collect['starting_after'] = starting_after

ending_before = 'endingBefore'
collect['ending_before'] = ending_before


result = sM_controller.get_network_sm_connectivity(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="splash_login_attempts_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SplashLoginAttemptsController") SplashLoginAttemptsController

### Get singleton instance

The singleton instance of the ``` SplashLoginAttemptsController ``` class can be accessed from the API Client.

```ruby
splashLoginAttempts_controller = client.splash_login_attempts
```

### <a name="get_network_splash_login_attempts"></a>![Method: ](https://apidocs.io/img/method.png ".SplashLoginAttemptsController.get_network_splash_login_attempts") get_network_splash_login_attempts

> List the splash login attempts for a network


```ruby
def get_network_splash_login_attempts(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| ssid_number |  ``` Optional ```  | Only return the login attempts for the specified SSID |
| login_identifier |  ``` Optional ```  | The username, email, or phone number used during login |
| timespan |  ``` Optional ```  | The timespan, in seconds, for the login attempts. The period will be from [timespan] seconds ago until now. The maximum timespan is 3 months |


#### Example Usage

```ruby
collect = Hash.new

id = 'id'
collect['id'] = id

ssid_number = 'ssidNumber'
collect['ssid_number'] = ssid_number

login_identifier = 'loginIdentifier'
collect['login_identifier'] = login_identifier

timespan = 'timespan'
collect['timespan'] = timespan


result = splashLoginAttempts_controller.get_network_splash_login_attempts(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="splash_settings_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SplashSettingsController") SplashSettingsController

### Get singleton instance

The singleton instance of the ``` SplashSettingsController ``` class can be accessed from the API Client.

```ruby
splashSettings_controller = client.splash_settings
```

### <a name="get_network_ssids_plash_settings"></a>![Method: ](https://apidocs.io/img/method.png ".SplashSettingsController.get_network_ssids_plash_settings") get_network_ssids_plash_settings

> Display the splash page settings for the given SSID


```ruby
def get_network_ssids_plash_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number


result = splashSettings_controller.get_network_ssids_plash_settings(collect)

```


### <a name="update_network_ssids_plash_settings"></a>![Method: ](https://apidocs.io/img/method.png ".SplashSettingsController.update_network_ssids_plash_settings") update_network_ssids_plash_settings

> Modify the splash page settings for the given SSID


```ruby
def update_network_ssids_plash_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |
| update_network_ssids_plash_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number

update_network_ssids_plash_settings = UpdateNetworkSsidsPlashSettingsModel.new
collect['update_network_ssids_plash_settings'] = update_network_ssids_plash_settings


result = splashSettings_controller.update_network_ssids_plash_settings(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="ssids_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SsidsController") SsidsController

### Get singleton instance

The singleton instance of the ``` SsidsController ``` class can be accessed from the API Client.

```ruby
ssids_controller = client.ssids
```

### <a name="get_network_ssids"></a>![Method: ](https://apidocs.io/img/method.png ".SsidsController.get_network_ssids") get_network_ssids

> List the SSIDs in a network. Supports networks with access points or wireless-enabled security appliances and teleworker gateways.


```ruby
def get_network_ssids(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = ssids_controller.get_network_ssids(network_id)

```


### <a name="get_network_ssid"></a>![Method: ](https://apidocs.io/img/method.png ".SsidsController.get_network_ssid") get_network_ssid

> Return a single SSID


```ruby
def get_network_ssid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number


result = ssids_controller.get_network_ssid(collect)

```


### <a name="update_network_ssid"></a>![Method: ](https://apidocs.io/img/method.png ".SsidsController.update_network_ssid") update_network_ssid

> Update the attributes of an SSID


```ruby
def update_network_ssid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |
| update_network_ssid |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

number = 'number'
collect['number'] = number

update_network_ssid = UpdateNetworkSsidModel.new
collect['update_network_ssid'] = update_network_ssid


result = ssids_controller.update_network_ssid(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="switch_settings_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SwitchSettingsController") SwitchSettingsController

### Get singleton instance

The singleton instance of the ``` SwitchSettingsController ``` class can be accessed from the API Client.

```ruby
switchSettings_controller = client.switch_settings
```

### <a name="get_network_switch_settings"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchSettingsController.get_network_switch_settings") get_network_switch_settings

> Returns the switch network settings


```ruby
def get_network_switch_settings(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = switchSettings_controller.get_network_switch_settings(network_id)

```


### <a name="update_network_switch_settings"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchSettingsController.update_network_switch_settings") update_network_switch_settings

> Update switch network settings


```ruby
def update_network_switch_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_switch_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_switch_settings = UpdateNetworkSwitchSettingsModel.new
collect['update_network_switch_settings'] = update_network_switch_settings


result = switchSettings_controller.update_network_switch_settings(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="switch_ports_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SwitchPortsController") SwitchPortsController

### Get singleton instance

The singleton instance of the ``` SwitchPortsController ``` class can be accessed from the API Client.

```ruby
switchPorts_controller = client.switch_ports
```

### <a name="get_device_switch_ports"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchPortsController.get_device_switch_ports") get_device_switch_ports

> List the switch ports for a switch


```ruby
def get_device_switch_ports(serial); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
serial = 'serial'

result = switchPorts_controller.get_device_switch_ports(serial)

```


### <a name="get_device_switch_port"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchPortsController.get_device_switch_port") get_device_switch_port

> Return a switch port


```ruby
def get_device_switch_port(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

serial = 'serial'
collect['serial'] = serial

number = 'number'
collect['number'] = number


result = switchPorts_controller.get_device_switch_port(collect)

```


### <a name="update_device_switch_port"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchPortsController.update_device_switch_port") update_device_switch_port

> Update a switch port


```ruby
def update_device_switch_port(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| serial |  ``` Required ```  | TODO: Add a parameter description |
| number |  ``` Required ```  | TODO: Add a parameter description |
| update_device_switch_port |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

serial = 'serial'
collect['serial'] = serial

number = 'number'
collect['number'] = number

update_device_switch_port = UpdateDeviceSwitchPortModel.new
collect['update_device_switch_port'] = update_device_switch_port


result = switchPorts_controller.update_device_switch_port(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="switch_stacks_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SwitchStacksController") SwitchStacksController

### Get singleton instance

The singleton instance of the ``` SwitchStacksController ``` class can be accessed from the API Client.

```ruby
switchStacks_controller = client.switch_stacks
```

### <a name="get_network_switch_stacks"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.get_network_switch_stacks") get_network_switch_stacks

> List the switch stacks in a network


```ruby
def get_network_switch_stacks(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = switchStacks_controller.get_network_switch_stacks(network_id)

```


### <a name="create_network_switch_stacks"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.create_network_switch_stacks") create_network_switch_stacks

> Create a stack


```ruby
def create_network_switch_stacks(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_switch_stacks |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_switch_stacks = CreateNetworkSwitchStacksModel.new
collect['create_network_switch_stacks'] = create_network_switch_stacks


result = switchStacks_controller.create_network_switch_stacks(collect)

```


### <a name="get_network_switch_stack"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.get_network_switch_stack") get_network_switch_stack

> Show a switch stack


```ruby
def get_network_switch_stack(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| switch_stack_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

switch_stack_id = 'switchStackId'
collect['switch_stack_id'] = switch_stack_id


result = switchStacks_controller.get_network_switch_stack(collect)

```


### <a name="delete_network_switch_stack"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.delete_network_switch_stack") delete_network_switch_stack

> Delete a stack


```ruby
def delete_network_switch_stack(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| switch_stack_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

switch_stack_id = 'switchStackId'
collect['switch_stack_id'] = switch_stack_id


switchStacks_controller.delete_network_switch_stack(collect)

```


### <a name="add_network_switch_stack"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.add_network_switch_stack") add_network_switch_stack

> Add a switch to a stack


```ruby
def add_network_switch_stack(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| switch_stack_id |  ``` Required ```  | TODO: Add a parameter description |
| add_network_switch_stack |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

switch_stack_id = 'switchStackId'
collect['switch_stack_id'] = switch_stack_id

add_network_switch_stack = AddNetworkSwitchStackModel.new
collect['add_network_switch_stack'] = add_network_switch_stack


result = switchStacks_controller.add_network_switch_stack(collect)

```


### <a name="remove_network_switch_stack"></a>![Method: ](https://apidocs.io/img/method.png ".SwitchStacksController.remove_network_switch_stack") remove_network_switch_stack

> Remove a switch from a stack


```ruby
def remove_network_switch_stack(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| switch_stack_id |  ``` Required ```  | TODO: Add a parameter description |
| remove_network_switch_stack |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkID'
collect['network_id'] = network_id

switch_stack_id = 'switchStackId'
collect['switch_stack_id'] = switch_stack_id

remove_network_switch_stack = RemoveNetworkSwitchStackModel.new
collect['remove_network_switch_stack'] = remove_network_switch_stack


result = switchStacks_controller.remove_network_switch_stack(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="syslog_servers_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SyslogServersController") SyslogServersController

### Get singleton instance

The singleton instance of the ``` SyslogServersController ``` class can be accessed from the API Client.

```ruby
syslogServers_controller = client.syslog_servers
```

### <a name="get_network_syslog_servers"></a>![Method: ](https://apidocs.io/img/method.png ".SyslogServersController.get_network_syslog_servers") get_network_syslog_servers

> List the syslog servers for a network


```ruby
def get_network_syslog_servers(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = syslogServers_controller.get_network_syslog_servers(network_id)

```


### <a name="update_network_syslog_servers"></a>![Method: ](https://apidocs.io/img/method.png ".SyslogServersController.update_network_syslog_servers") update_network_syslog_servers

> Update the syslog servers for a network


```ruby
def update_network_syslog_servers(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_syslog_servers |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_syslog_servers = UpdateNetworkSyslogServersModel.new
collect['update_network_syslog_servers'] = update_network_syslog_servers


result = syslogServers_controller.update_network_syslog_servers(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="content_filtering_categories_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContentFilteringCategoriesController") ContentFilteringCategoriesController

### Get singleton instance

The singleton instance of the ``` ContentFilteringCategoriesController ``` class can be accessed from the API Client.

```ruby
contentFilteringCategories_controller = client.content_filtering_categories
```

### <a name="get_network_content_filtering_categories"></a>![Method: ](https://apidocs.io/img/method.png ".ContentFilteringCategoriesController.get_network_content_filtering_categories") get_network_content_filtering_categories

> List all available content filtering categories for an MX network


```ruby
def get_network_content_filtering_categories(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = contentFilteringCategories_controller.get_network_content_filtering_categories(network_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="content_filtering_rules_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContentFilteringRulesController") ContentFilteringRulesController

### Get singleton instance

The singleton instance of the ``` ContentFilteringRulesController ``` class can be accessed from the API Client.

```ruby
contentFilteringRules_controller = client.content_filtering_rules
```

### <a name="get_network_content_filtering"></a>![Method: ](https://apidocs.io/img/method.png ".ContentFilteringRulesController.get_network_content_filtering") get_network_content_filtering

> Return the content filtering settings for an MX network


```ruby
def get_network_content_filtering(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = contentFilteringRules_controller.get_network_content_filtering(network_id)

```


### <a name="update_network_content_filtering"></a>![Method: ](https://apidocs.io/img/method.png ".ContentFilteringRulesController.update_network_content_filtering") update_network_content_filtering

> Update the content filtering settings for an MX network


```ruby
def update_network_content_filtering(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_content_filtering |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_content_filtering = UpdateNetworkContentFilteringModel.new
collect['update_network_content_filtering'] = update_network_content_filtering


result = contentFilteringRules_controller.update_network_content_filtering(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="firewalled_services_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FirewalledServicesController") FirewalledServicesController

### Get singleton instance

The singleton instance of the ``` FirewalledServicesController ``` class can be accessed from the API Client.

```ruby
firewalledServices_controller = client.firewalled_services
```

### <a name="get_network_firewalled_services"></a>![Method: ](https://apidocs.io/img/method.png ".FirewalledServicesController.get_network_firewalled_services") get_network_firewalled_services

> List the appliance services and their accessibility rules


```ruby
def get_network_firewalled_services(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = firewalledServices_controller.get_network_firewalled_services(network_id)

```


### <a name="get_network_firewalled_service"></a>![Method: ](https://apidocs.io/img/method.png ".FirewalledServicesController.get_network_firewalled_service") get_network_firewalled_service

> Return the accessibility settings of the given service ('ICMP', 'web', or 'SNMP')


```ruby
def get_network_firewalled_service(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| service |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

service = 'service'
collect['service'] = service


result = firewalledServices_controller.get_network_firewalled_service(collect)

```


### <a name="update_network_firewalled_service"></a>![Method: ](https://apidocs.io/img/method.png ".FirewalledServicesController.update_network_firewalled_service") update_network_firewalled_service

> Updates the accessibility settings for the given service ('ICMP', 'web', or 'SNMP')


```ruby
def update_network_firewalled_service(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| service |  ``` Required ```  | TODO: Add a parameter description |
| update_network_firewalled_service |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

service = 'service'
collect['service'] = service

update_network_firewalled_service = UpdateNetworkFirewalledServiceModel.new
collect['update_network_firewalled_service'] = update_network_firewalled_service


result = firewalledServices_controller.update_network_firewalled_service(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mx1_many_nat_rules_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MX1ManyNATRulesController") MX1ManyNATRulesController

### Get singleton instance

The singleton instance of the ``` MX1ManyNATRulesController ``` class can be accessed from the API Client.

```ruby
mX1ManyNATRules_controller = client.mx_1_many_nat_rules
```

### <a name="get_network_one_to_many_nat_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MX1ManyNATRulesController.get_network_one_to_many_nat_rules") get_network_one_to_many_nat_rules

> Return the 1:Many NAT mapping rules for an MX network


```ruby
def get_network_one_to_many_nat_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mX1ManyNATRules_controller.get_network_one_to_many_nat_rules(network_id)

```


### <a name="update_network_one_to_many_nat_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MX1ManyNATRulesController.update_network_one_to_many_nat_rules") update_network_one_to_many_nat_rules

> Set the 1:Many NAT mapping rules for an MX network


```ruby
def update_network_one_to_many_nat_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_one_to_many_nat_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_one_to_many_nat_rules = UpdateNetworkOneToManyNatRulesModel.new
collect['update_network_one_to_many_nat_rules'] = update_network_one_to_many_nat_rules


result = mX1ManyNATRules_controller.update_network_one_to_many_nat_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mx11_nat_rules_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MX11NATRulesController") MX11NATRulesController

### Get singleton instance

The singleton instance of the ``` MX11NATRulesController ``` class can be accessed from the API Client.

```ruby
mX11NATRules_controller = client.mx_11_nat_rules
```

### <a name="get_network_one_to_one_nat_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MX11NATRulesController.get_network_one_to_one_nat_rules") get_network_one_to_one_nat_rules

> Return the 1:1 NAT mapping rules for an MX network


```ruby
def get_network_one_to_one_nat_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mX11NATRules_controller.get_network_one_to_one_nat_rules(network_id)

```


### <a name="update_network_one_to_one_nat_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MX11NATRulesController.update_network_one_to_one_nat_rules") update_network_one_to_one_nat_rules

> Set the 1:1 NAT mapping rules for an MX network


```ruby
def update_network_one_to_one_nat_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_one_to_one_nat_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_one_to_one_nat_rules = UpdateNetworkOneToOneNatRulesModel.new
collect['update_network_one_to_one_nat_rules'] = update_network_one_to_one_nat_rules


result = mX11NATRules_controller.update_network_one_to_one_nat_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mx_port_forwarding_rules_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MXPortForwardingRulesController") MXPortForwardingRulesController

### Get singleton instance

The singleton instance of the ``` MXPortForwardingRulesController ``` class can be accessed from the API Client.

```ruby
mXPortForwardingRules_controller = client.mx_port_forwarding_rules
```

### <a name="get_network_port_forwarding_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXPortForwardingRulesController.get_network_port_forwarding_rules") get_network_port_forwarding_rules

> Return the port forwarding rules for an MX network


```ruby
def get_network_port_forwarding_rules(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = mXPortForwardingRules_controller.get_network_port_forwarding_rules(network_id)

```


### <a name="update_network_port_forwarding_rules"></a>![Method: ](https://apidocs.io/img/method.png ".MXPortForwardingRulesController.update_network_port_forwarding_rules") update_network_port_forwarding_rules

> Update the port forwarding rules for an MX network


```ruby
def update_network_port_forwarding_rules(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_port_forwarding_rules |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_port_forwarding_rules = UpdateNetworkPortForwardingRulesModel.new
collect['update_network_port_forwarding_rules'] = update_network_port_forwarding_rules


result = mXPortForwardingRules_controller.update_network_port_forwarding_rules(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="static_routes_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StaticRoutesController") StaticRoutesController

### Get singleton instance

The singleton instance of the ``` StaticRoutesController ``` class can be accessed from the API Client.

```ruby
staticRoutes_controller = client.static_routes
```

### <a name="get_network_static_routes"></a>![Method: ](https://apidocs.io/img/method.png ".StaticRoutesController.get_network_static_routes") get_network_static_routes

> List the static routes for this network


```ruby
def get_network_static_routes(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = staticRoutes_controller.get_network_static_routes(network_id)

```


### <a name="create_network_static_routes"></a>![Method: ](https://apidocs.io/img/method.png ".StaticRoutesController.create_network_static_routes") create_network_static_routes

> Add a static route


```ruby
def create_network_static_routes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_static_routes |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_static_routes = CreateNetworkStaticRoutesModel.new
collect['create_network_static_routes'] = create_network_static_routes


result = staticRoutes_controller.create_network_static_routes(collect)

```


### <a name="get_network_static_route"></a>![Method: ](https://apidocs.io/img/method.png ".StaticRoutesController.get_network_static_route") get_network_static_route

> Return a static route


```ruby
def get_network_static_route(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| sr_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

sr_id = 'srId'
collect['sr_id'] = sr_id


result = staticRoutes_controller.get_network_static_route(collect)

```


### <a name="update_network_static_route"></a>![Method: ](https://apidocs.io/img/method.png ".StaticRoutesController.update_network_static_route") update_network_static_route

> Update a static route


```ruby
def update_network_static_route(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| sr_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_static_route |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

sr_id = 'srId'
collect['sr_id'] = sr_id

update_network_static_route = UpdateNetworkStaticRouteModel.new
collect['update_network_static_route'] = update_network_static_route


result = staticRoutes_controller.update_network_static_route(collect)

```


### <a name="delete_network_static_route"></a>![Method: ](https://apidocs.io/img/method.png ".StaticRoutesController.delete_network_static_route") delete_network_static_route

> Delete a static route from a network


```ruby
def delete_network_static_route(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| sr_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

sr_id = 'srId'
collect['sr_id'] = sr_id


staticRoutes_controller.delete_network_static_route(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="uplink_settings_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UplinkSettingsController") UplinkSettingsController

### Get singleton instance

The singleton instance of the ``` UplinkSettingsController ``` class can be accessed from the API Client.

```ruby
uplinkSettings_controller = client.uplink_settings
```

### <a name="get_network_uplink_settings"></a>![Method: ](https://apidocs.io/img/method.png ".UplinkSettingsController.get_network_uplink_settings") get_network_uplink_settings

> Returns the uplink settings for your MX network.


```ruby
def get_network_uplink_settings(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = uplinkSettings_controller.get_network_uplink_settings(network_id)

```


### <a name="update_network_uplink_settings"></a>![Method: ](https://apidocs.io/img/method.png ".UplinkSettingsController.update_network_uplink_settings") update_network_uplink_settings

> Updates the uplink settings for your MX network.


```ruby
def update_network_uplink_settings(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_uplink_settings |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_uplink_settings = UpdateNetworkUplinkSettingsModel.new
collect['update_network_uplink_settings'] = update_network_uplink_settings


result = uplinkSettings_controller.update_network_uplink_settings(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="vlans_controller"></a>![Class: ](https://apidocs.io/img/class.png ".VlansController") VlansController

### Get singleton instance

The singleton instance of the ``` VlansController ``` class can be accessed from the API Client.

```ruby
vlans_controller = client.vlans
```

### <a name="get_network_vlans"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.get_network_vlans") get_network_vlans

> List the VLANs for this network


```ruby
def get_network_vlans(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = vlans_controller.get_network_vlans(network_id)

```


### <a name="create_network_vlans"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.create_network_vlans") create_network_vlans

> Add a VLAN


```ruby
def create_network_vlans(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| create_network_vlans |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

create_network_vlans = CreateNetworkVlansModel.new
collect['create_network_vlans'] = create_network_vlans


result = vlans_controller.create_network_vlans(collect)

```


### <a name="get_network_vlan"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.get_network_vlan") get_network_vlan

> Return a VLAN


```ruby
def get_network_vlan(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| vlan_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

vlan_id = 'vlanId'
collect['vlan_id'] = vlan_id


result = vlans_controller.get_network_vlan(collect)

```


### <a name="update_network_vlan"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.update_network_vlan") update_network_vlan

> Update a VLAN


```ruby
def update_network_vlan(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| vlan_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_vlan |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

vlan_id = 'vlanId'
collect['vlan_id'] = vlan_id

update_network_vlan = UpdateNetworkVlanModel.new
collect['update_network_vlan'] = update_network_vlan


result = vlans_controller.update_network_vlan(collect)

```


### <a name="delete_network_vlan"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.delete_network_vlan") delete_network_vlan

> Delete a VLAN from a network


```ruby
def delete_network_vlan(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| vlan_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

vlan_id = 'vlanId'
collect['vlan_id'] = vlan_id


vlans_controller.delete_network_vlan(collect)

```


### <a name="get_network_vlans_enabled_state"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.get_network_vlans_enabled_state") get_network_vlans_enabled_state

> Returns the enabled status of VLANs for the network


```ruby
def get_network_vlans_enabled_state(network_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
network_id = 'networkId'

result = vlans_controller.get_network_vlans_enabled_state(network_id)

```


### <a name="update_network_vlans_enabled_state"></a>![Method: ](https://apidocs.io/img/method.png ".VlansController.update_network_vlans_enabled_state") update_network_vlans_enabled_state

> Enable/Disable VLANs for the given network


```ruby
def update_network_vlans_enabled_state(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| update_network_vlans_enabled_state |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

update_network_vlans_enabled_state = UpdateNetworkVlansEnabledStateModel.new
collect['update_network_vlans_enabled_state'] = update_network_vlans_enabled_state


result = vlans_controller.update_network_vlans_enabled_state(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="wireless_health_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WirelessHealthController") WirelessHealthController

### Get singleton instance

The singleton instance of the ``` WirelessHealthController ``` class can be accessed from the API Client.

```ruby
wirelessHealth_controller = client.wireless_health
```

### <a name="get_network_connection_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_connection_stats") get_network_connection_stats

> Aggregated connectivity info for this network


```ruby
def get_network_connection_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag


result = wirelessHealth_controller.get_network_connection_stats(collect)

```


### <a name="get_network_devices_connection_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_devices_connection_stats") get_network_devices_connection_stats

> Aggregated connectivity info for this network, grouped by node


```ruby
def get_network_devices_connection_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag


result = wirelessHealth_controller.get_network_devices_connection_stats(collect)

```


### <a name="get_network_device_connection_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_device_connection_stats") get_network_device_connection_stats

> Aggregated connectivity info for a given AP on this network


```ruby
def get_network_device_connection_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag


result = wirelessHealth_controller.get_network_device_connection_stats(collect)

```


### <a name="get_network_clients_connection_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_clients_connection_stats") get_network_clients_connection_stats

> Aggregated connectivity info for this network, grouped by clients


```ruby
def get_network_clients_connection_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag


result = wirelessHealth_controller.get_network_clients_connection_stats(collect)

```


### <a name="get_network_client_connection_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_client_connection_stats") get_network_client_connection_stats

> Aggregated connectivity info for a given client on this network


```ruby
def get_network_client_connection_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| client_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

client_id = 'clientId'
collect['client_id'] = client_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag


result = wirelessHealth_controller.get_network_client_connection_stats(collect)

```


### <a name="get_network_latency_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_latency_stats") get_network_latency_stats

> Aggregated latency info for this network


```ruby
def get_network_latency_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| fields |  ``` Optional ```  | Partial selection: If present, this call will return only the selected fields of ["rawDistribution", "avg"]. All fields will be returned by default. Selected fields must be entered as a comma separated string. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

fields = 'fields'
collect['fields'] = fields


result = wirelessHealth_controller.get_network_latency_stats(collect)

```


### <a name="get_network_devices_latency_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_devices_latency_stats") get_network_devices_latency_stats

> Aggregated latency info for this network, grouped by node


```ruby
def get_network_devices_latency_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| fields |  ``` Optional ```  | Partial selection: If present, this call will return only the selected fields of ["rawDistribution", "avg"]. All fields will be returned by default. Selected fields must be entered as a comma separated string. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

fields = 'fields'
collect['fields'] = fields


result = wirelessHealth_controller.get_network_devices_latency_stats(collect)

```


### <a name="get_network_device_latency_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_device_latency_stats") get_network_device_latency_stats

> Aggregated latency info for a given AP on this network


```ruby
def get_network_device_latency_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| serial |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| fields |  ``` Optional ```  | Partial selection: If present, this call will return only the selected fields of ["rawDistribution", "avg"]. All fields will be returned by default. Selected fields must be entered as a comma separated string. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

serial = 'serial'
collect['serial'] = serial

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

fields = 'fields'
collect['fields'] = fields


result = wirelessHealth_controller.get_network_device_latency_stats(collect)

```


### <a name="get_network_clients_latency_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_clients_latency_stats") get_network_clients_latency_stats

> Aggregated latency info for this network, grouped by clients


```ruby
def get_network_clients_latency_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| fields |  ``` Optional ```  | Partial selection: If present, this call will return only the selected fields of ["rawDistribution", "avg"]. All fields will be returned by default. Selected fields must be entered as a comma separated string. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

fields = 'fields'
collect['fields'] = fields


result = wirelessHealth_controller.get_network_clients_latency_stats(collect)

```


### <a name="get_network_client_latency_stats"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_client_latency_stats") get_network_client_latency_stats

> Aggregated latency info for a given client on this network


```ruby
def get_network_client_latency_stats(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| client_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| fields |  ``` Optional ```  | Partial selection: If present, this call will return only the selected fields of ["rawDistribution", "avg"]. All fields will be returned by default. Selected fields must be entered as a comma separated string. |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

client_id = 'clientId'
collect['client_id'] = client_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

fields = 'fields'
collect['fields'] = fields


result = wirelessHealth_controller.get_network_client_latency_stats(collect)

```


### <a name="get_network_failed_connections"></a>![Method: ](https://apidocs.io/img/method.png ".WirelessHealthController.get_network_failed_connections") get_network_failed_connections

> List of all failed client connection events on this network in a given time range


```ruby
def get_network_failed_connections(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| network_id |  ``` Required ```  | TODO: Add a parameter description |
| t0 |  ``` Optional ```  | Start of the requested time range in seconds since epoch (Required) |
| t1 |  ``` Optional ```  | End of the requested time range in seconds since epoch (Required) |
| ssid |  ``` Optional ```  | Filter results by SSID |
| vlan |  ``` Optional ```  | Filter results by VLAN |
| ap_tag |  ``` Optional ```  | Filter results by AP Tag |
| serial |  ``` Optional ```  | Filter by AP |
| client_id |  ``` Optional ```  | Filter by client |


#### Example Usage

```ruby
collect = Hash.new

network_id = 'networkId'
collect['network_id'] = network_id

t0 = 't0'
collect['t0'] = t0

t1 = 't1'
collect['t1'] = t1

ssid = 'ssid'
collect['ssid'] = ssid

vlan = 'vlan'
collect['vlan'] = vlan

ap_tag = 'apTag'
collect['ap_tag'] = ap_tag

serial = 'serial'
collect['serial'] = serial

client_id = 'clientId'
collect['client_id'] = client_id


result = wirelessHealth_controller.get_network_failed_connections(collect)

```


[Back to List of Controllers](#list_of_controllers)



