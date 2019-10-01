# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WirelessHealthController
  class WirelessHealthController < BaseController
    @instance = WirelessHealthController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Aggregated connectivity info for this network, grouped by clients
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @return Mixed response from the API call
    def get_network_clients_connection_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/connectionStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag']
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

    # Aggregated latency info for this network, grouped by clients
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] fields Optional parameter: Partial selection: If present,
    # this call will return only the selected fields of ["rawDistribution",
    # "avg"]. All fields will be returned by default. Selected fields must be
    # entered as a comma separated string.
    # @return Mixed response from the API call
    def get_network_clients_latency_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/latencyStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'fields' => options['fields']
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

    # Aggregated connectivity info for a given client on this network. Clients
    # are identified by their MAC.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @return Mixed response from the API call
    def get_network_client_connection_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/connectionStats'
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
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag']
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

    # Aggregated latency info for a given client on this network. Clients are
    # identified by their MAC.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] fields Optional parameter: Partial selection: If present,
    # this call will return only the selected fields of ["rawDistribution",
    # "avg"]. All fields will be returned by default. Selected fields must be
    # entered as a comma separated string.
    # @return Mixed response from the API call
    def get_network_client_latency_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/latencyStats'
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
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'fields' => options['fields']
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

    # Aggregated connectivity info for this network
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @return Mixed response from the API call
    def get_network_connection_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/connectionStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag']
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

    # Aggregated connectivity info for this network, grouped by node
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @return Mixed response from the API call
    def get_network_devices_connection_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/connectionStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag']
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

    # Aggregated latency info for this network, grouped by node
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] fields Optional parameter: Partial selection: If present,
    # this call will return only the selected fields of ["rawDistribution",
    # "avg"]. All fields will be returned by default. Selected fields must be
    # entered as a comma separated string.
    # @return Mixed response from the API call
    def get_network_devices_latency_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/latencyStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'fields' => options['fields']
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

    # Aggregated connectivity info for a given AP on this network
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @return Mixed response from the API call
    def get_network_device_connection_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/connectionStats'
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
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag']
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

    # Aggregated latency info for a given AP on this network
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] fields Optional parameter: Partial selection: If present,
    # this call will return only the selected fields of ["rawDistribution",
    # "avg"]. All fields will be returned by default. Selected fields must be
    # entered as a comma separated string.
    # @return Mixed response from the API call
    def get_network_device_latency_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/latencyStats'
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
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'fields' => options['fields']
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

    # List of all failed client connection events on this network in a given
    # time range
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] serial Optional parameter: Filter by AP
    # @param [String] client_id Optional parameter: Filter by client MAC
    # @return Mixed response from the API call
    def get_network_failed_connections(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/failedConnections'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'serial' => options['serial'],
          'clientId' => options['client_id']
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

    # Aggregated latency info for this network
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 180 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days.
    # @param [Integer] ssid Optional parameter: Filter results by SSID
    # @param [Integer] vlan Optional parameter: Filter results by VLAN
    # @param [String] ap_tag Optional parameter: Filter results by AP Tag
    # @param [String] fields Optional parameter: Partial selection: If present,
    # this call will return only the selected fields of ["rawDistribution",
    # "avg"]. All fields will be returned by default. Selected fields must be
    # entered as a comma separated string.
    # @return Mixed response from the API call
    def get_network_latency_stats(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/latencyStats'
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
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'ssid' => options['ssid'],
          'vlan' => options['vlan'],
          'apTag' => options['ap_tag'],
          'fields' => options['fields']
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
