# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # EventsController
  class EventsController < BaseController
    @instance = EventsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the events for the network
    # @param [String] network_id Required parameter: Example:
    # @param [String] product_type Optional parameter: The product type to fetch
    # events for. This parameter is required for networks with multiple device
    # types. Valid types are wireless, appliance, switch, systemsManager,
    # camera, and cellularGateway
    # @param [List of String] included_event_types Optional parameter: A list of
    # event types. The returned events will be filtered to only include events
    # with these types.
    # @param [List of String] excluded_event_types Optional parameter: A list of
    # event types. The returned events will be filtered to exclude events with
    # these types.
    # @param [String] device_mac Optional parameter: The MAC address of the
    # Meraki device which the list of events will be filtered with
    # @param [String] device_serial Optional parameter: The serial of the Meraki
    # device which the list of events will be filtered with
    # @param [String] device_name Optional parameter: The name of the Meraki
    # device which the list of events will be filtered with
    # @param [String] client_ip Optional parameter: The IP of the client which
    # the list of events will be filtered with. Only supported for track-by-IP
    # networks.
    # @param [String] client_mac Optional parameter: The MAC address of the
    # client which the list of events will be filtered with. Only supported for
    # track-by-MAC networks.
    # @param [String] client_name Optional parameter: The name, or partial name,
    # of the client which the list of events will be filtered with
    # @param [String] sm_device_mac Optional parameter: The MAC address of the
    # Systems Manager device which the list of events will be filtered with
    # @param [String] sm_device_name Optional parameter: The name of the Systems
    # Manager device which the list of events will be filtered with
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 10.
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
    # @return Mixed response from the API call
    def get_network_events(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/events'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'productType' => options['product_type'],
          'includedEventTypes' => options['included_event_types'],
          'excludedEventTypes' => options['excluded_event_types'],
          'deviceMac' => options['device_mac'],
          'deviceSerial' => options['device_serial'],
          'deviceName' => options['device_name'],
          'clientIp' => options['client_ip'],
          'clientMac' => options['client_mac'],
          'clientName' => options['client_name'],
          'smDeviceMac' => options['sm_device_mac'],
          'smDeviceName' => options['sm_device_name'],
          'perPage' => options['per_page'],
          'startingAfter' => options['starting_after'],
          'endingBefore' => options['ending_before']
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

    # List the event type to human-readable description
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_events_event_types(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/events/eventTypes'
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
  end
end
