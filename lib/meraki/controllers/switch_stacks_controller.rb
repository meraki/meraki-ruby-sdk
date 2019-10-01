# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SwitchStacksController
  class SwitchStacksController < BaseController
    @instance = SwitchStacksController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the switch stacks in a network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_stacks(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks'
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

    # Create a stack
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSwitchStackModel] create_network_switch_stack
    # Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_switch_stack(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_switch_stack' => options['create_network_switch_stack']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks'
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
        parameters: options['create_network_switch_stack'].to_json
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

    # Show a switch stack
    # @param [String] network_id Required parameter: Example:
    # @param [String] switch_stack_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_stack(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'switch_stack_id' => options['switch_stack_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks/{switchStackId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'switchStackId' => options['switch_stack_id']
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

    # Delete a stack
    # @param [String] network_id Required parameter: Example:
    # @param [String] switch_stack_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_switch_stack(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'switch_stack_id' => options['switch_stack_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks/{switchStackId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'switchStackId' => options['switch_stack_id']
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

    # Add a switch to a stack
    # @param [String] network_id Required parameter: Example:
    # @param [String] switch_stack_id Required parameter: Example:
    # @param [AddNetworkSwitchStackModel] add_network_switch_stack Required
    # parameter: Example:
    # @return Mixed response from the API call
    def add_network_switch_stack(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'switch_stack_id' => options['switch_stack_id'],
        'add_network_switch_stack' => options['add_network_switch_stack']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks/{switchStackId}/add'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'switchStackId' => options['switch_stack_id']
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
        parameters: options['add_network_switch_stack'].to_json
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

    # Remove a switch from a stack
    # @param [String] network_id Required parameter: Example:
    # @param [String] switch_stack_id Required parameter: Example:
    # @param [RemoveNetworkSwitchStackModel] remove_network_switch_stack
    # Required parameter: Example:
    # @return Mixed response from the API call
    def remove_network_switch_stack(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'switch_stack_id' => options['switch_stack_id'],
        'remove_network_switch_stack' => options['remove_network_switch_stack']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switchStacks/{switchStackId}/remove'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'switchStackId' => options['switch_stack_id']
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
        parameters: options['remove_network_switch_stack'].to_json
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
