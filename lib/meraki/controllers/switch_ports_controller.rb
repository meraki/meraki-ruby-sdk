# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SwitchPortsController
  class SwitchPortsController < BaseController
    @instance = SwitchPortsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the status for all the ports of a switch
    # @param [String] serial Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameter t0. The value must be in seconds and be less than or equal to 31
    # days. The default is 1 day.
    # @return Mixed response from the API call
    def get_device_switch_port_statuses(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/switchPortStatuses'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          'timespan' => options['timespan']
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

    # List the switch ports for a switch
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_device_switch_ports(serial)
      # Validate required parameters.
      validate_parameters(
        'serial' => serial
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/switchPorts'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => serial
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

    # Return a switch port
    # @param [String] serial Required parameter: Example:
    # @param [String] number Required parameter: Example:
    # @return Mixed response from the API call
    def get_device_switch_port(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial'],
        'number' => options['number']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/switchPorts/{number}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial'],
        'number' => options['number']
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

    # Update a switch port
    # @param [String] serial Required parameter: Example:
    # @param [String] number Required parameter: Example:
    # @param [UpdateDeviceSwitchPortModel] update_device_switch_port Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def update_device_switch_port(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial'],
        'number' => options['number']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/switchPorts/{number}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial'],
        'number' => options['number']
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
        parameters: options['update_device_switch_port'].to_json
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
