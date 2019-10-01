# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RadioSettingsController
  class RadioSettingsController < BaseController
    @instance = RadioSettingsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the radio settings of a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_device_wireless_radio_settings(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/wireless/radioSettings'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
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

    # Update the radio settings of a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [UpdateNetworkDeviceWirelessRadioSettingsModel]
    # update_network_device_wireless_radio_settings Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_device_wireless_radio_settings(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/wireless/radioSettings'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
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
        parameters: options['update_network_device_wireless_radio_settings'].to_json
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

    # List the non-basic RF profiles for this network
    # @param [String] network_id Required parameter: Example:
    # @param [Boolean] include_template_profiles Optional parameter: If the
    # network is bound to a template, this parameter controls whether or not the
    # non-basic RF profiles defined on the template     should be included in
    # the response alongside the non-basic profiles defined on the bound
    # network. Defaults to false.
    # @return Mixed response from the API call
    def get_network_wireless_rf_profiles(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/wireless/rfProfiles'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'includeTemplateProfiles' => options['include_template_profiles']
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

    # Creates new RF profile for this network
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkWirelessRfProfileModel]
    # create_network_wireless_rf_profile Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_wireless_rf_profile(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_wireless_rf_profile' => options['create_network_wireless_rf_profile']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/wireless/rfProfiles'
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
        parameters: options['create_network_wireless_rf_profile'].to_json
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

    # Updates specified RF profile for this network
    # @param [String] network_id Required parameter: Example:
    # @param [String] rf_profile_id Required parameter: Example:
    # @param [UpdateNetworkWirelessRfProfileModel]
    # update_network_wireless_rf_profile Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_wireless_rf_profile(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'rf_profile_id' => options['rf_profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/wireless/rfProfiles/{rfProfileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'rfProfileId' => options['rf_profile_id']
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
        parameters: options['update_network_wireless_rf_profile'].to_json
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

    # Delete a RF Profile
    # @param [String] network_id Required parameter: Example:
    # @param [String] rf_profile_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_wireless_rf_profile(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'rf_profile_id' => options['rf_profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/wireless/rfProfiles/{rfProfileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'rfProfileId' => options['rf_profile_id']
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

    # Return a RF profile
    # @param [String] network_id Required parameter: Example:
    # @param [String] rf_profile_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_wireless_rf_profile(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'rf_profile_id' => options['rf_profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/wireless/rfProfiles/{rfProfileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'rfProfileId' => options['rf_profile_id']
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
  end
end
