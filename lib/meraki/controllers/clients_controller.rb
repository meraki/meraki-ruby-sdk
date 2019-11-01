# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ClientsController
  class ClientsController < BaseController
    @instance = ClientsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the clients of a device, up to a maximum of a month ago. The usage of
    # each client is returned in kilobytes. If the device is a switch, the
    # switchport is returned; otherwise the switchport field is null.
    # @param [String] serial Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameter t0. The value must be in seconds and be less than or equal to 31
    # days. The default is 1 day.
    # @return Mixed response from the API call
    def get_device_clients(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/clients'
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

    # List the clients that have used this network in the timespan
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameter t0. The value must be in seconds and be less than or equal to 31
    # days. The default is 1 day.
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
    def get_network_clients(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          'timespan' => options['timespan'],
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

    # Provisions a client with a name and policy. Clients can be provisioned
    # before they associate to the network.
    # @param [String] network_id Required parameter: Example:
    # @param [ProvisionNetworkClientsModel] provision_network_clients Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def provision_network_clients(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/provision'
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
        parameters: options['provision_network_clients'].to_json
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

    # Return the client associated with the given identifier. Clients can be
    # identified by a client key or either the MAC or IP depending on whether
    # the network uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_client(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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

    # Return the events associated with this client. Clients can be identified
    # by a client key or either the MAC or IP depending on whether the network
    # uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 100. Default is 100.
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
    def get_network_client_events(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/events'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
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

    # Return the latency history for a client. Clients can be identified by a
    # client key or either the MAC or IP depending on whether the network uses
    # Track-by-IP. The latency data is from a sample of 2% of packets and is
    # grouped into 4 traffic categories: background, best effort, video, voice.
    # Within these categories the sampled packet counters are bucketed by
    # latency in milliseconds.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 791 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 791 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 791 days. The default is 1 day.
    # @param [Integer] resolution Optional parameter: The time resolution in
    # seconds for returned data. The valid resolutions are: 86400. The default
    # is 86400.
    # @return Mixed response from the API call
    def get_network_client_latency_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/latencyHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'resolution' => options['resolution']
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

    # Return the policy assigned to a client on the network. Clients can be
    # identified by a client key or either the MAC or IP depending on whether
    # the network uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_client_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/policy'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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

    # Update the policy assigned to a client on the network. Clients can be
    # identified by a client key or either the MAC or IP depending on whether
    # the network uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [UpdateNetworkClientPolicyModel] update_network_client_policy
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_client_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/policy'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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
        parameters: options['update_network_client_policy'].to_json
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

    # Return the splash authorization for a client, for each SSID they've
    # associated with through splash. Only enabled SSIDs with Click-through
    # splash enabled will be included. Clients can be identified by a client key
    # or either the MAC or IP depending on whether the network uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_client_splash_authorization_status(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/splashAuthorizationStatus'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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

    # Update a client's splash authorization. Clients can be identified by a
    # client key or either the MAC or IP depending on whether the network uses
    # Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [UpdateNetworkClientSplashAuthorizationStatusModel]
    # update_network_client_splash_authorization_status Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_client_splash_authorization_status(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/splashAuthorizationStatus'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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
        parameters: options['update_network_client_splash_authorization_status'].to_json
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

    # Return the client's network traffic data over time. Usage data is in
    # kilobytes. This endpoint requires detailed traffic analysis to be enabled
    # on the Network-wide > General page. Clients can be identified by a client
    # key or either the MAC or IP depending on whether the network uses
    # Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000.
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
    def get_network_client_traffic_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/trafficHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
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

    # Return the client's daily usage history. Usage data is in kilobytes.
    # Clients can be identified by a client key or either the MAC or IP
    # depending on whether the network uses Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_client_usage_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/usageHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'clientId' => options['client_id']
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
