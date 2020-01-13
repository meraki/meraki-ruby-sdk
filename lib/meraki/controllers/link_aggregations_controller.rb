# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # LinkAggregationsController
  class LinkAggregationsController < BaseController
    @instance = LinkAggregationsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List link aggregation groups
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_link_aggregations(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/linkAggregations'
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

    # Create a link aggregation group
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSwitchLinkAggregationModel]
    # create_network_switch_link_aggregation Optional parameter: Example:
    # @return Mixed response from the API call
    def create_network_switch_link_aggregation(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/linkAggregations'
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
        parameters: options['create_network_switch_link_aggregation'].to_json
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

    # Update a link aggregation group
    # @param [String] network_id Required parameter: Example:
    # @param [String] link_aggregation_id Required parameter: Example:
    # @param [UpdateNetworkSwitchLinkAggregationModel]
    # update_network_switch_link_aggregation Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_switch_link_aggregation(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'link_aggregation_id' => options['link_aggregation_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/linkAggregations/{linkAggregationId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'linkAggregationId' => options['link_aggregation_id']
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
        parameters: options['update_network_switch_link_aggregation'].to_json
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

    # Split a link aggregation group into separate ports
    # @param [String] network_id Required parameter: Example:
    # @param [String] link_aggregation_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_switch_link_aggregation(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'link_aggregation_id' => options['link_aggregation_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/linkAggregations/{linkAggregationId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'linkAggregationId' => options['link_aggregation_id']
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
  end
end
