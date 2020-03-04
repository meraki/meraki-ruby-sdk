# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # APIUsageController
  class APIUsageController < BaseController
    @instance = APIUsageController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the API requests made by an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 31 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 31 days. The default is 31 days.
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 50.
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
    # @param [String] admin_id Optional parameter: Filter the results by the ID
    # of the admin who made the API requests
    # @param [String] path Optional parameter: Filter the results by the path of
    # the API requests
    # @param [String] method Optional parameter: Filter the results by the
    # method of the API requests (must be 'GET', 'PUT', 'POST' or 'DELETE')
    # @param [Integer] response_code Optional parameter: Filter the results by
    # the response code of the API requests
    # @param [String] source_ip Optional parameter: Filter the results by the IP
    # address of the originating API request
    # @return Mixed response from the API call
    def get_organization_api_requests(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/apiRequests'
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
          'endingBefore' => options['ending_before'],
          'adminId' => options['admin_id'],
          'path' => options['path'],
          'method' => options['method'],
          'responseCode' => options['response_code'],
          'sourceIp' => options['source_ip']
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

    # Return an aggregated overview of API requests data
    # @param [String] organization_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 31 days after t0.
    # @param [Float] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 31 days. The default is 31 days.
    # @return Mixed response from the API call
    def get_organization_api_requests_overview(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/apiRequests/overview'
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
  end
end
