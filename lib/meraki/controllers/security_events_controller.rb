# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SecurityEventsController
  class SecurityEventsController < BaseController
    @instance = SecurityEventsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the security events for a client. Clients can be identified by a
    # client key or either the MAC or IP depending on whether the network uses
    # Track-by-IP.
    # @param [String] network_id Required parameter: Example:
    # @param [String] client_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 791 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 791 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 791 days. The default is 31 days.
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 100.
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
    def get_network_client_security_events(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'client_id' => options['client_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/clients/{clientId}/securityEvents'
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

    # List the security events for a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 365 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 365 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 365 days. The default is 31 days.
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 100.
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
    def get_network_security_events(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/securityEvents'
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

    # List the security events for an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 365 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 365 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 365 days. The default is 31 days.
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 100.
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
    def get_organization_security_events(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/securityEvents'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          't1' => options['t1'],
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
  end
end
