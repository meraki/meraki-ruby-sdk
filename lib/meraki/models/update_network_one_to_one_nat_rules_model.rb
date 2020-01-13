# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkOneToOneNatRulesModel Model.
  class UpdateNetworkOneToOneNatRulesModel < BaseModel
    # An array of 1:1 nat rules
    # @return [List of Rule8Model]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rules'] = 'rules'
      @_hash
    end

    def initialize(rules = nil)
      @rules = rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule8Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkOneToOneNatRulesModel.new(rules)
    end
  end
end
