# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MGSubnetPoolSettingsController
  class MGSubnetPoolSettingsController < BaseController
    @instance = MGSubnetPoolSettingsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the subnet pool and mask configured for MGs in the network.
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_cellular_gateway_settings_subnet_pool(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/cellularGateway/settings/subnetPool'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => network_id
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

    # Update the subnet pool and mask configuration for MGs in the network.
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkCellularGatewaySettingsSubnetPoolModel]
    # update_network_cellular_gateway_settings_subnet_pool Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_cellular_gateway_settings_subnet_pool(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/cellularGateway/settings/subnetPool'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
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
        parameters: options['update_network_cellular_gateway_settings_subnet_pool'].to_json
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
