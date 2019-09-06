# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CamerasController
  class CamerasController < BaseController
    @instance = CamerasController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Generate a snapshot of what the camera sees at the specified time and
    # return a link to that image.
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [GenerateNetworkCameraSnapshotModel]
    # generate_network_camera_snapshot Optional parameter: Example:
    # @return Mixed response from the API call
    def generate_network_camera_snapshot(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/cameras/{serial}/snapshot'
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
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: options['generate_network_camera_snapshot'].to_json
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

    # Returns video link to the specified camera. If a timestamp is supplied, it
    # links to that timestamp.
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [String] timestamp Optional parameter: [optional] The video link
    # will start at this timestamp. The timestamp is in UNIX Epoch time
    # (milliseconds). If no timestamp is specified, we will assume current
    # time.
    # @return Mixed response from the API call
    def get_network_camera_video_link(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/cameras/{serial}/videoLink'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'timestamp' => options['timestamp']
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
