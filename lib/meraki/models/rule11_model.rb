# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule11Model Model.
  class Rule11Model < BaseModel
    # A list of objects describing the definitions of your traffic shaping rule.
    # At least one definition is required.
    # @return [List of DefinitionModel]
    attr_accessor :definitions

    # An object describing the bandwidth settings for your rule.
    # @return [PerClientBandwidthLimitsModel]
    attr_accessor :per_client_bandwidth_limits

    # The DSCP tag applied by your rule. null means 'Do not change DSCP tag'.
    #     For a list of possible tag values, use the
    # trafficShaping/dscpTaggingOptions endpoint.
    # @return [Integer]
    attr_accessor :dscp_tag_value

    # The PCP tag applied by your rule. Can be 0 (lowest priority) through 7
    # (highest priority).
    #     null means 'Do not set PCP tag'.
    # @return [Integer]
    attr_accessor :pcp_tag_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['definitions'] = 'definitions'
      @_hash['per_client_bandwidth_limits'] = 'perClientBandwidthLimits'
      @_hash['dscp_tag_value'] = 'dscpTagValue'
      @_hash['pcp_tag_value'] = 'pcpTagValue'
      @_hash
    end

    def initialize(definitions = nil,
                   per_client_bandwidth_limits = nil,
                   dscp_tag_value = nil,
                   pcp_tag_value = nil)
      @definitions = definitions
      @per_client_bandwidth_limits = per_client_bandwidth_limits
      @dscp_tag_value = dscp_tag_value
      @pcp_tag_value = pcp_tag_value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      definitions = nil
      unless hash['definitions'].nil?
        definitions = []
        hash['definitions'].each do |structure|
          definitions << (DefinitionModel.from_hash(structure) if structure)
        end
      end
      if hash['perClientBandwidthLimits']
        per_client_bandwidth_limits = PerClientBandwidthLimitsModel.from_hash(hash['perClientBandwidthLimits'])
      end
      dscp_tag_value = hash['dscpTagValue']
      pcp_tag_value = hash['pcpTagValue']

      # Create object from extracted values.
      Rule11Model.new(definitions,
                      per_client_bandwidth_limits,
                      dscp_tag_value,
                      pcp_tag_value)
    end
  end
end
