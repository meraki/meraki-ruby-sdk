# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CustomPieChartItemModel Model.
  class CustomPieChartItemModel < BaseModel
    # The name of the custom pie chart item.
    # @return [String]
    attr_accessor :name

    # The signature type for the custom pie chart item. Can be one of 'host',
    # 'port' or 'ipRange'.
    # @return [Type8Enum]
    attr_accessor :type

    # The value of the custom pie chart item. Valid syntax depends on the
    # signature type of the chart item
    #     (see sample request/response for more details).
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(name = nil,
                   type = nil,
                   value = nil)
      @name = name
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      CustomPieChartItemModel.new(name,
                                  type,
                                  value)
    end
  end
end
