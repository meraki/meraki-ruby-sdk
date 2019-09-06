# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SAMLRolesController
  class SAMLRolesController < BaseController
    @instance = SAMLRolesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the SAML roles for this organization
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_saml_roles(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/samlRoles'
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

    # Create a SAML role
    # @param [String] organization_id Required parameter: Example:
    # @param [CreateOrganizationSamlRoleModel] create_organization_saml_role
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def create_organization_saml_role(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/samlRoles'
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
        parameters: options['create_organization_saml_role'].to_json
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

    # Return a SAML role
    # @param [String] organization_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_saml_role(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/samlRoles/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'id' => options['id']
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

    # Update a SAML role
    # @param [String] organization_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [UpdateOrganizationSamlRoleModel] update_organization_saml_role
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_organization_saml_role(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/samlRoles/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'id' => options['id']
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
        parameters: options['update_organization_saml_role'].to_json
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

    # Remove a SAML role
    # @param [String] organization_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @return void response from the API call
    def delete_organization_saml_role(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/samlRoles/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'id' => options['id']
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
