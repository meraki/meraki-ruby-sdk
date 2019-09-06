# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # NamedTagScopeController
  class NamedTagScopeController < BaseController
    @instance = NamedTagScopeController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the target groups in this network
    # @param [String] network_id Required parameter: Example:
    # @param [Boolean] with_details Optional parameter: Boolean indicating if
    # the the ids of the devices or users scoped by the target group should be
    # included in the response
    # @return Mixed response from the API call
    def get_network_sm_target_groups(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/targetGroups'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'withDetails' => options['with_details']
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

    # Add a target group
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSmTargetGroupModel] create_network_sm_target_group
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def create_network_sm_target_group(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/targetGroups'
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
        parameters: options['create_network_sm_target_group'].to_json
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

    # Return a target group
    # @param [String] network_id Required parameter: Example:
    # @param [String] target_group_id Required parameter: Example:
    # @param [Boolean] with_details Optional parameter: Boolean indicating if
    # the the ids of the devices or users scoped by the target group should be
    # included in the response
    # @return Mixed response from the API call
    def get_network_sm_target_group(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'target_group_id' => options['target_group_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/targetGroups/{targetGroupId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'targetGroupId' => options['target_group_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'withDetails' => options['with_details']
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

    # Update a target group
    # @param [String] network_id Required parameter: Example:
    # @param [String] target_group_id Required parameter: Example:
    # @param [UpdateNetworkSmTargetGroupModel] update_network_sm_target_group
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_target_group(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'target_group_id' => options['target_group_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/targetGroups/{targetGroupId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'targetGroupId' => options['target_group_id']
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
        parameters: options['update_network_sm_target_group'].to_json
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

    # Delete a target group from a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] target_group_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_sm_target_group(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'target_group_id' => options['target_group_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/targetGroups/{targetGroupId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'targetGroupId' => options['target_group_id']
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
