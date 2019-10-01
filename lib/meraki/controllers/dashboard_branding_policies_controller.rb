# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # DashboardBrandingPoliciesController
  class DashboardBrandingPoliciesController < BaseController
    @instance = DashboardBrandingPoliciesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the branding policies of an organization
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_branding_policies(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => organization_id
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

    # Add a new branding policy to an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [CreateOrganizationBrandingPolicyModel]
    # create_organization_branding_policy Required parameter: Example:
    # @return Mixed response from the API call
    def create_organization_branding_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'create_organization_branding_policy' => options['create_organization_branding_policy']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
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
        parameters: options['create_organization_branding_policy'].to_json
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

    # Return the branding policy IDs of an organization in priority order. IDs
    # are ordered in ascending order of priority (IDs later in the array have
    # higher priority).
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_branding_policies_priorities(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies/priorities'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => organization_id
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

    # Update the priority ordering of an organization's branding policies.
    # @param [String] organization_id Required parameter: Example:
    # @param [UpdateOrganizationBrandingPoliciesPrioritiesModel]
    # update_organization_branding_policies_priorities Required parameter:
    # Example:
    # @return Mixed response from the API call
    def update_organization_branding_policies_priorities(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'update_organization_branding_policies_priorities' => options['update_organization_branding_policies_priorities']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies/priorities'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
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
        parameters: options['update_organization_branding_policies_priorities'].to_json
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

    # Return a branding policy
    # @param [String] organization_id Required parameter: Example:
    # @param [String] branding_policy_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_branding_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'branding_policy_id' => options['branding_policy_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies/{brandingPolicyId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'brandingPolicyId' => options['branding_policy_id']
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

    # Update a branding policy
    # @param [String] organization_id Required parameter: Example:
    # @param [String] branding_policy_id Required parameter: Example:
    # @param [UpdateOrganizationBrandingPolicyModel]
    # update_organization_branding_policy Optional parameter: Example:
    # @return Mixed response from the API call
    def update_organization_branding_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'branding_policy_id' => options['branding_policy_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies/{brandingPolicyId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'brandingPolicyId' => options['branding_policy_id']
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
        parameters: options['update_organization_branding_policy'].to_json
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

    # Delete a branding policy
    # @param [String] organization_id Required parameter: Example:
    # @param [String] branding_policy_id Required parameter: Example:
    # @return void response from the API call
    def delete_organization_branding_policy(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'branding_policy_id' => options['branding_policy_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/brandingPolicies/{brandingPolicyId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'brandingPolicyId' => options['branding_policy_id']
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
