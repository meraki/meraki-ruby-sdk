# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MonitoredMediaServersController
  class MonitoredMediaServersController < BaseController
    @instance = MonitoredMediaServersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the monitored media servers for this organization. Only valid for
    # organizations with Meraki Insight.
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_insight_monitored_media_servers(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/insight/monitoredMediaServers'
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

    # Add a media server to be monitored for this organization. Only valid for
    # organizations with Meraki Insight.
    # @param [String] organization_id Required parameter: Example:
    # @param [CreateOrganizationInsightMonitoredMediaServerModel]
    # create_organization_insight_monitored_media_server Required parameter:
    # Example:
    # @return Mixed response from the API call
    def create_organization_insight_monitored_media_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'create_organization_insight_monitored_media_server' => options['create_organization_insight_monitored_media_server']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/insight/monitoredMediaServers'
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
        parameters: options['create_organization_insight_monitored_media_server'].to_json
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

    # Return a monitored media server for this organization. Only valid for
    # organizations with Meraki Insight.
    # @param [String] organization_id Required parameter: Example:
    # @param [String] monitored_media_server_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_insight_monitored_media_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'monitored_media_server_id' => options['monitored_media_server_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/insight/monitoredMediaServers/{monitoredMediaServerId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'monitoredMediaServerId' => options['monitored_media_server_id']
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

    # Update a monitored media server for this organization. Only valid for
    # organizations with Meraki Insight.
    # @param [String] organization_id Required parameter: Example:
    # @param [String] monitored_media_server_id Required parameter: Example:
    # @param [UpdateOrganizationInsightMonitoredMediaServerModel]
    # update_organization_insight_monitored_media_server Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_organization_insight_monitored_media_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'monitored_media_server_id' => options['monitored_media_server_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/insight/monitoredMediaServers/{monitoredMediaServerId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'monitoredMediaServerId' => options['monitored_media_server_id']
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
        parameters: options['update_organization_insight_monitored_media_server'].to_json
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

    # Delete a monitored media server from this organization. Only valid for
    # organizations with Meraki Insight.
    # @param [String] organization_id Required parameter: Example:
    # @param [String] monitored_media_server_id Required parameter: Example:
    # @return void response from the API call
    def delete_organization_insight_monitored_media_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'monitored_media_server_id' => options['monitored_media_server_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/insight/monitoredMediaServers/{monitoredMediaServerId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'monitoredMediaServerId' => options['monitored_media_server_id']
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
