# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # PIIController
  class PIIController < BaseController
    @instance = PIIController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the keys required to access Personally Identifiable Information (PII)
    # for a given identifier. Exactly one identifier will be accepted. If the
    # organization contains org-wide Systems Manager users matching the key
    # provided then there will be an entry with the key "0" containing the
    # applicable keys.
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/piiKeys
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [String] username Optional parameter: The username of a Systems
    # Manager user
    # @param [String] email Optional parameter: The email of a network user
    # account or a Systems Manager device
    # @param [String] mac Optional parameter: The MAC of a network client device
    # or a Systems Manager device
    # @param [String] serial Optional parameter: The serial of a Systems Manager
    # device
    # @param [String] imei Optional parameter: The IMEI of a Systems Manager
    # device
    # @param [String] bluetooth_mac Optional parameter: The MAC of a Bluetooth
    # client
    # @return Mixed response from the API call
    def get_network_pii_pii_keys(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/piiKeys'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'username' => options['username'],
          'email' => options['email'],
          'mac' => options['mac'],
          'serial' => options['serial'],
          'imei' => options['imei'],
          'bluetoothMac' => options['bluetooth_mac']
        },
        array_serialization: Configuration.array_serialization
      )
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

    # List the PII requests for this network or organization
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/requests
    # ```
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_pii_requests(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/requests'
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

    # Submit a new delete or restrict processing PII request
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/requests
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkPiiRequestModel] create_network_pii_request Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def create_network_pii_request(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/requests'
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
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: options['create_network_pii_request'].to_json
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

    # Return a PII request
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/requests/{requestId}
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [String] request_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_pii_request(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'request_id' => options['request_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/requests/{requestId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'requestId' => options['request_id']
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

    # Delete a restrict processing PII request
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/requests/{requestId}
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [String] request_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_pii_request(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'request_id' => options['request_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/requests/{requestId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'requestId' => options['request_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end

    # Given a piece of Personally Identifiable Information (PII), return the
    # Systems Manager device ID(s) associated with that identifier. These device
    # IDs can be used with the Systems Manager API endpoints to retrieve device
    # details. Exactly one identifier will be accepted.
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/smDevicesForKey
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [String] username Optional parameter: The username of a Systems
    # Manager user
    # @param [String] email Optional parameter: The email of a network user
    # account or a Systems Manager device
    # @param [String] mac Optional parameter: The MAC of a network client device
    # or a Systems Manager device
    # @param [String] serial Optional parameter: The serial of a Systems Manager
    # device
    # @param [String] imei Optional parameter: The IMEI of a Systems Manager
    # device
    # @param [String] bluetooth_mac Optional parameter: The MAC of a Bluetooth
    # client
    # @return Mixed response from the API call
    def get_network_pii_sm_devices_for_key(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/smDevicesForKey'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'username' => options['username'],
          'email' => options['email'],
          'mac' => options['mac'],
          'serial' => options['serial'],
          'imei' => options['imei'],
          'bluetoothMac' => options['bluetooth_mac']
        },
        array_serialization: Configuration.array_serialization
      )
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

    # Given a piece of Personally Identifiable Information (PII), return the
    # Systems Manager owner ID(s) associated with that identifier. These owner
    # IDs can be used with the Systems Manager API endpoints to retrieve owner
    # details. Exactly one identifier will be accepted.
    # ## ALTERNATE PATH
    # ```
    # /organizations/{organizationId}/pii/smOwnersForKey
    # ```
    # @param [String] network_id Required parameter: Example:
    # @param [String] username Optional parameter: The username of a Systems
    # Manager user
    # @param [String] email Optional parameter: The email of a network user
    # account or a Systems Manager device
    # @param [String] mac Optional parameter: The MAC of a network client device
    # or a Systems Manager device
    # @param [String] serial Optional parameter: The serial of a Systems Manager
    # device
    # @param [String] imei Optional parameter: The IMEI of a Systems Manager
    # device
    # @param [String] bluetooth_mac Optional parameter: The MAC of a Bluetooth
    # client
    # @return Mixed response from the API call
    def get_network_pii_sm_owners_for_key(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/pii/smOwnersForKey'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'username' => options['username'],
          'email' => options['email'],
          'mac' => options['mac'],
          'serial' => options['serial'],
          'imei' => options['imei'],
          'bluetoothMac' => options['bluetooth_mac']
        },
        array_serialization: Configuration.array_serialization
      )
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
  end
end
