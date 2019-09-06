# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MXVPNFirewallController
  class MXVPNFirewallController < BaseController
    @instance = MXVPNFirewallController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the firewall rules for an organization's site-to-site VPN
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_vpn_firewall_rules(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/vpnFirewallRules'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => organization_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end

    # Update the firewall rules of an organization's site-to-site VPN
    # @param [String] organization_id Required parameter: Example:
    # @param [UpdateOrganizationVpnFirewallRulesModel]
    # update_organization_vpn_firewall_rules Optional parameter: Example:
    # @return Mixed response from the API call
    def update_organization_vpn_firewall_rules(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/vpnFirewallRules'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_organization_vpn_firewall_rules'].to_json
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end
  end
end
