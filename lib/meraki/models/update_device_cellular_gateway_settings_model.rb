# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateDeviceCellularGatewaySettingsModel Model.
  class UpdateDeviceCellularGatewaySettingsModel < BaseModel
    # list of all reserved IP ranges for a single MG
    # @return [List of ReservedIpRangeModel]
    attr_accessor :reserved_ip_ranges

    # list of all fixed IP assignments for a single MG
    # @return [List of FixedIpAssignmentModel]
    attr_accessor :fixed_ip_assignments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reserved_ip_ranges'] = 'reservedIpRanges'
      @_hash['fixed_ip_assignments'] = 'fixedIpAssignments'
      @_hash
    end

    def initialize(reserved_ip_ranges = nil,
                   fixed_ip_assignments = nil)
      @reserved_ip_ranges = reserved_ip_ranges
      @fixed_ip_assignments = fixed_ip_assignments
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      reserved_ip_ranges = nil
      unless hash['reservedIpRanges'].nil?
        reserved_ip_ranges = []
        hash['reservedIpRanges'].each do |structure|
          reserved_ip_ranges << (ReservedIpRangeModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      fixed_ip_assignments = nil
      unless hash['fixedIpAssignments'].nil?
        fixed_ip_assignments = []
        hash['fixedIpAssignments'].each do |structure|
          fixed_ip_assignments << (FixedIpAssignmentModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateDeviceCellularGatewaySettingsModel.new(reserved_ip_ranges,
                                                   fixed_ip_assignments)
    end
  end
end
