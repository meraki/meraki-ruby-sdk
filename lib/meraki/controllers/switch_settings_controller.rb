# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SwitchSettingsController
  class SwitchSettingsController < BaseController
    @instance = SwitchSettingsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Returns the switch network settings
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_settings(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings'
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

    # Update switch network settings
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkSwitchSettingsModel] update_network_switch_settings
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_switch_settings(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings'
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
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_network_switch_settings'].to_json
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

    # List quality of service rules
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_settings_qos_rules(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules'
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

    # Add a quality of service rule
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSwitchSettingsQosRuleModel]
    # create_network_switch_settings_qos_rule Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_switch_settings_qos_rule(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_switch_settings_qos_rule' => options['create_network_switch_settings_qos_rule']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules'
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
        parameters: options['create_network_switch_settings_qos_rule'].to_json
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

    # Return the quality of service rule IDs by order in which they will be
    # processed by the switch
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_settings_qos_rules_order(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules/order'
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

    # Update the order in which the rules should be processed by the switch
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkSwitchSettingsQosRulesOrderModel]
    # update_network_switch_settings_qos_rules_order Required parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_switch_settings_qos_rules_order(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'update_network_switch_settings_qos_rules_order' => options['update_network_switch_settings_qos_rules_order']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules/order'
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
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_network_switch_settings_qos_rules_order'].to_json
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

    # Return a quality of service rule
    # @param [String] network_id Required parameter: Example:
    # @param [String] qos_rule_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_switch_settings_qos_rule(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'qos_rule_id' => options['qos_rule_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules/{qosRuleId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'qosRuleId' => options['qos_rule_id']
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

    # Delete a quality of service rule
    # @param [String] network_id Required parameter: Example:
    # @param [String] qos_rule_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_switch_settings_qos_rule(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'qos_rule_id' => options['qos_rule_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules/{qosRuleId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'qosRuleId' => options['qos_rule_id']
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

    # Update a quality of service rule
    # @param [String] network_id Required parameter: Example:
    # @param [String] qos_rule_id Required parameter: Example:
    # @param [UpdateNetworkSwitchSettingsQosRuleModel]
    # update_network_switch_settings_qos_rule Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_switch_settings_qos_rule(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'qos_rule_id' => options['qos_rule_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/switch/settings/qosRules/{qosRuleId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'qosRuleId' => options['qos_rule_id']
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
        parameters: options['update_network_switch_settings_qos_rule'].to_json
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
