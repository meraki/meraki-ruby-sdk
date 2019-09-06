# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # BluetoothClientsController
  class BluetoothClientsController < BaseController
    @instance = BluetoothClientsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the Bluetooth clients seen by APs in this network
    # @param [String] network_id Required parameter: Example:
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 5 - 1000. Default is 10.
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, prev, or next page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, prev, or next page in
    # the HTTP Link header should define it.
    # @param [Integer] timespan Optional parameter: The timespan, in seconds,
    # used to look back from now for bluetooth clients
    # @param [Boolean] include_connectivity_history Optional parameter: Include
    # the connectivity history for this client
    # @return Mixed response from the API call
    def get_network_bluetooth_clients(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/bluetoothClients'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'perPage' => options['per_page'],
          'startingAfter' => options['starting_after'],
          'endingBefore' => options['ending_before'],
          'timespan' => options['timespan'],
          'includeConnectivityHistory' => options['include_connectivity_history']
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

    # Return a Bluetooth client. Bluetooth clients can be identified by their ID
    # or their MAC.
    # @param [String] network_id Required parameter: Example:
    # @param [String] bluetooth_client_id Required parameter: Example:
    # @param [Boolean] include_connectivity_history Optional parameter: Include
    # the connectivity history for this client
    # @param [Integer] connectivity_history_timespan Optional parameter: The
    # timespan, in seconds, for the connectivityHistory data. By default 1 day,
    # 86400, will be used.
    # @return Mixed response from the API call
    def get_network_bluetooth_client(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'bluetooth_client_id' => options['bluetooth_client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/bluetoothClients/{bluetoothClientId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'bluetoothClientId' => options['bluetooth_client_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'includeConnectivityHistory' => options['include_connectivity_history'],
          'connectivityHistoryTimespan' => options['connectivity_history_timespan']
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
