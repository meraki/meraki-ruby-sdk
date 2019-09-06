# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  #  meraki client class.
  class MerakiClient
    # Singleton access to api_usage controller.
    # @return [APIUsageController] Returns the controller instance.
    def api_usage
      APIUsageController.instance
    end

    # Singleton access to action_batches controller.
    # @return [ActionBatchesController] Returns the controller instance.
    def action_batches
      ActionBatchesController.instance
    end

    # Singleton access to admins controller.
    # @return [AdminsController] Returns the controller instance.
    def admins
      AdminsController.instance
    end

    # Singleton access to alert_settings controller.
    # @return [AlertSettingsController] Returns the controller instance.
    def alert_settings
      AlertSettingsController.instance
    end

    # Singleton access to bluetooth_clients controller.
    # @return [BluetoothClientsController] Returns the controller instance.
    def bluetooth_clients
      BluetoothClientsController.instance
    end

    # Singleton access to cameras controller.
    # @return [CamerasController] Returns the controller instance.
    def cameras
      CamerasController.instance
    end

    # Singleton access to clients controller.
    # @return [ClientsController] Returns the controller instance.
    def clients
      ClientsController.instance
    end

    # Singleton access to config_templates controller.
    # @return [ConfigTemplatesController] Returns the controller instance.
    def config_templates
      ConfigTemplatesController.instance
    end

    # Singleton access to content_filtering_categories controller.
    # @return [ContentFilteringCategoriesController] Returns the controller instance.
    def content_filtering_categories
      ContentFilteringCategoriesController.instance
    end

    # Singleton access to content_filtering_rules controller.
    # @return [ContentFilteringRulesController] Returns the controller instance.
    def content_filtering_rules
      ContentFilteringRulesController.instance
    end

    # Singleton access to devices controller.
    # @return [DevicesController] Returns the controller instance.
    def devices
      DevicesController.instance
    end

    # Singleton access to firewalled_services controller.
    # @return [FirewalledServicesController] Returns the controller instance.
    def firewalled_services
      FirewalledServicesController.instance
    end

    # Singleton access to group_policies controller.
    # @return [GroupPoliciesController] Returns the controller instance.
    def group_policies
      GroupPoliciesController.instance
    end

    # Singleton access to http_servers controller.
    # @return [HTTPServersController] Returns the controller instance.
    def http_servers
      HTTPServersController.instance
    end

    # Singleton access to intrusion_settings controller.
    # @return [IntrusionSettingsController] Returns the controller instance.
    def intrusion_settings
      IntrusionSettingsController.instance
    end

    # Singleton access to mr_l3_firewall controller.
    # @return [MRL3FirewallController] Returns the controller instance.
    def mr_l3_firewall
      MRL3FirewallController.instance
    end

    # Singleton access to mv_sense controller.
    # @return [MVSenseController] Returns the controller instance.
    def mv_sense
      MVSenseController.instance
    end

    # Singleton access to mx_1_1_nat_rules controller.
    # @return [MX11NATRulesController] Returns the controller instance.
    def mx_1_1_nat_rules
      MX11NATRulesController.instance
    end

    # Singleton access to mx_1_many_nat_rules controller.
    # @return [MX1ManyNATRulesController] Returns the controller instance.
    def mx_1_many_nat_rules
      MX1ManyNATRulesController.instance
    end

    # Singleton access to mx_l3_firewall controller.
    # @return [MXL3FirewallController] Returns the controller instance.
    def mx_l3_firewall
      MXL3FirewallController.instance
    end

    # Singleton access to mx_l7_application_categories controller.
    # @return [MXL7ApplicationCategoriesController] Returns the controller instance.
    def mx_l7_application_categories
      MXL7ApplicationCategoriesController.instance
    end

    # Singleton access to mx_l7_firewall controller.
    # @return [MXL7FirewallController] Returns the controller instance.
    def mx_l7_firewall
      MXL7FirewallController.instance
    end

    # Singleton access to mx_vlan_ports controller.
    # @return [MXVLANPortsController] Returns the controller instance.
    def mx_vlan_ports
      MXVLANPortsController.instance
    end

    # Singleton access to mx_vpn_firewall controller.
    # @return [MXVPNFirewallController] Returns the controller instance.
    def mx_vpn_firewall
      MXVPNFirewallController.instance
    end

    # Singleton access to mx_cellular_firewall controller.
    # @return [MXCellularFirewallController] Returns the controller instance.
    def mx_cellular_firewall
      MXCellularFirewallController.instance
    end

    # Singleton access to mx_port_forwarding_rules controller.
    # @return [MXPortForwardingRulesController] Returns the controller instance.
    def mx_port_forwarding_rules
      MXPortForwardingRulesController.instance
    end

    # Singleton access to mx_warm_spare_settings controller.
    # @return [MXWarmSpareSettingsController] Returns the controller instance.
    def mx_warm_spare_settings
      MXWarmSpareSettingsController.instance
    end

    # Singleton access to malware_settings controller.
    # @return [MalwareSettingsController] Returns the controller instance.
    def malware_settings
      MalwareSettingsController.instance
    end

    # Singleton access to management_interface_settings controller.
    # @return [ManagementInterfaceSettingsController] Returns the controller instance.
    def management_interface_settings
      ManagementInterfaceSettingsController.instance
    end

    # Singleton access to meraki_auth_users controller.
    # @return [MerakiAuthUsersController] Returns the controller instance.
    def meraki_auth_users
      MerakiAuthUsersController.instance
    end

    # Singleton access to named_tag_scope controller.
    # @return [NamedTagScopeController] Returns the controller instance.
    def named_tag_scope
      NamedTagScopeController.instance
    end

    # Singleton access to netflow_settings controller.
    # @return [NetflowSettingsController] Returns the controller instance.
    def netflow_settings
      NetflowSettingsController.instance
    end

    # Singleton access to networks controller.
    # @return [NetworksController] Returns the controller instance.
    def networks
      NetworksController.instance
    end

    # Singleton access to open_api_spec controller.
    # @return [OpenAPISpecController] Returns the controller instance.
    def open_api_spec
      OpenAPISpecController.instance
    end

    # Singleton access to organizations controller.
    # @return [OrganizationsController] Returns the controller instance.
    def organizations
      OrganizationsController.instance
    end

    # Singleton access to pii controller.
    # @return [PIIController] Returns the controller instance.
    def pii
      PIIController.instance
    end

    # Singleton access to radio_settings controller.
    # @return [RadioSettingsController] Returns the controller instance.
    def radio_settings
      RadioSettingsController.instance
    end

    # Singleton access to saml_roles controller.
    # @return [SAMLRolesController] Returns the controller instance.
    def saml_roles
      SAMLRolesController.instance
    end

    # Singleton access to sm controller.
    # @return [SMController] Returns the controller instance.
    def sm
      SMController.instance
    end

    # Singleton access to snmp_settings controller.
    # @return [SNMPSettingsController] Returns the controller instance.
    def snmp_settings
      SNMPSettingsController.instance
    end

    # Singleton access to ssids controller.
    # @return [SsidsController] Returns the controller instance.
    def ssids
      SsidsController.instance
    end

    # Singleton access to security_events controller.
    # @return [SecurityEventsController] Returns the controller instance.
    def security_events
      SecurityEventsController.instance
    end

    # Singleton access to splash_login_attempts controller.
    # @return [SplashLoginAttemptsController] Returns the controller instance.
    def splash_login_attempts
      SplashLoginAttemptsController.instance
    end

    # Singleton access to splash_settings controller.
    # @return [SplashSettingsController] Returns the controller instance.
    def splash_settings
      SplashSettingsController.instance
    end

    # Singleton access to static_routes controller.
    # @return [StaticRoutesController] Returns the controller instance.
    def static_routes
      StaticRoutesController.instance
    end

    # Singleton access to switch_port_schedules controller.
    # @return [SwitchPortSchedulesController] Returns the controller instance.
    def switch_port_schedules
      SwitchPortSchedulesController.instance
    end

    # Singleton access to switch_ports controller.
    # @return [SwitchPortsController] Returns the controller instance.
    def switch_ports
      SwitchPortsController.instance
    end

    # Singleton access to switch_profiles controller.
    # @return [SwitchProfilesController] Returns the controller instance.
    def switch_profiles
      SwitchProfilesController.instance
    end

    # Singleton access to switch_settings controller.
    # @return [SwitchSettingsController] Returns the controller instance.
    def switch_settings
      SwitchSettingsController.instance
    end

    # Singleton access to switch_stacks controller.
    # @return [SwitchStacksController] Returns the controller instance.
    def switch_stacks
      SwitchStacksController.instance
    end

    # Singleton access to syslog_servers controller.
    # @return [SyslogServersController] Returns the controller instance.
    def syslog_servers
      SyslogServersController.instance
    end

    # Singleton access to traffic_analysis_settings controller.
    # @return [TrafficAnalysisSettingsController] Returns the controller instance.
    def traffic_analysis_settings
      TrafficAnalysisSettingsController.instance
    end

    # Singleton access to traffic_shaping controller.
    # @return [TrafficShapingController] Returns the controller instance.
    def traffic_shaping
      TrafficShapingController.instance
    end

    # Singleton access to uplink_settings controller.
    # @return [UplinkSettingsController] Returns the controller instance.
    def uplink_settings
      UplinkSettingsController.instance
    end

    # Singleton access to vlans controller.
    # @return [VlansController] Returns the controller instance.
    def vlans
      VlansController.instance
    end

    # Singleton access to webhook_logs controller.
    # @return [WebhookLogsController] Returns the controller instance.
    def webhook_logs
      WebhookLogsController.instance
    end

    # Singleton access to wireless_health controller.
    # @return [WirelessHealthController] Returns the controller instance.
    def wireless_health
      WirelessHealthController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(x_cisco_meraki_api_key: nil)
      Configuration.x_cisco_meraki_api_key = x_cisco_meraki_api_key if
        x_cisco_meraki_api_key
    end
  end
end
