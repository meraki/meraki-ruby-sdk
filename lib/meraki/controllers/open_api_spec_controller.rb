# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # OpenAPISpecController
  class OpenAPISpecController < BaseController
    @instance = OpenAPISpecController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the OpenAPI 2.0 Specification of the organization's API
    # documentation in JSON
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_openapi_spec(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/openapiSpec'
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
  end
end
