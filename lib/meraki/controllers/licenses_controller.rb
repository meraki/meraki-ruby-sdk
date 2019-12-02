# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # LicensesController
  class LicensesController < BaseController
    @instance = LicensesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the licenses for an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 1000.
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
    # @param [String] device_serial Optional parameter: Filter the licenses to
    # those assigned to a particular device
    # @param [String] network_id Optional parameter: Filter the licenses to
    # those assigned in a particular network
    # @param [StateEnum] state Optional parameter: Filter the licenses to those
    # in a particular state. Can be one of 'active', 'expired', 'expiring',
    # 'unused', 'unusedActive' or 'recentlyQueued'
    # @return Mixed response from the API call
    def get_organization_licenses(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'perPage' => options['per_page'],
          'startingAfter' => options['starting_after'],
          'endingBefore' => options['ending_before'],
          'deviceSerial' => options['device_serial'],
          'networkId' => options['network_id'],
          'state' => options['state']
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

    # Assign SM seats to a network. This will increase the managed SM device
    # limit of the network
    # @param [String] organization_id Required parameter: Example:
    # @param [AssignOrganizationLicensesSeatsModel]
    # assign_organization_licenses_seats Required parameter: Example:
    # @return Mixed response from the API call
    def assign_organization_licenses_seats(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'assign_organization_licenses_seats' => options['assign_organization_licenses_seats']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/assignSeats'
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
        parameters: options['assign_organization_licenses_seats'].to_json
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

    # Move licenses to another organization. This will also move any devices
    # that the licenses are assigned to
    # @param [String] organization_id Required parameter: Example:
    # @param [MoveOrganizationLicensesModel] move_organization_licenses Required
    # parameter: Example:
    # @return Mixed response from the API call
    def move_organization_licenses(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'move_organization_licenses' => options['move_organization_licenses']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/move'
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
        parameters: options['move_organization_licenses'].to_json
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

    # Move SM seats to another organization
    # @param [String] organization_id Required parameter: Example:
    # @param [MoveOrganizationLicensesSeatsModel]
    # move_organization_licenses_seats Required parameter: Example:
    # @return Mixed response from the API call
    def move_organization_licenses_seats(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'move_organization_licenses_seats' => options['move_organization_licenses_seats']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/moveSeats'
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
        parameters: options['move_organization_licenses_seats'].to_json
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

    # Renew SM seats of a license. This will extend the license expiration date
    # of managed SM devices covered by this license
    # @param [String] organization_id Required parameter: Example:
    # @param [RenewOrganizationLicensesSeatsModel]
    # renew_organization_licenses_seats Required parameter: Example:
    # @return Mixed response from the API call
    def renew_organization_licenses_seats(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'renew_organization_licenses_seats' => options['renew_organization_licenses_seats']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/renewSeats'
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
        parameters: options['renew_organization_licenses_seats'].to_json
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

    # Display a license
    # @param [String] organization_id Required parameter: Example:
    # @param [String] license_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_license(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'license_id' => options['license_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/{licenseId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'licenseId' => options['license_id']
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

    # Update a license
    # @param [String] organization_id Required parameter: Example:
    # @param [String] license_id Required parameter: Example:
    # @param [UpdateOrganizationLicenseModel] update_organization_license
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_organization_license(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'license_id' => options['license_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/licenses/{licenseId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'licenseId' => options['license_id']
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
        parameters: options['update_organization_license'].to_json
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
