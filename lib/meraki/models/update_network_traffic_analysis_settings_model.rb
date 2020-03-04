# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkTrafficAnalysisSettingsModel Model.
  class UpdateNetworkTrafficAnalysisSettingsModel < BaseModel
    # The traffic analysis mode for the network. Can be one of 'disabled' (do
    # not collect traffic types),
    #     'basic' (collect generic traffic categories), or 'detailed' (collect
    # destination hostnames).
    # @return [Mode3Enum]
    attr_accessor :mode

    # The list of items that make up the custom pie chart for traffic reporting.
    # @return [List of CustomPieChartItemModel]
    attr_accessor :custom_pie_chart_items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['custom_pie_chart_items'] = 'customPieChartItems'
      @_hash
    end

    def initialize(mode = nil,
                   custom_pie_chart_items = nil)
      @mode = mode
      @custom_pie_chart_items = custom_pie_chart_items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash['mode']
      # Parameter is an array, so we need to iterate through it
      custom_pie_chart_items = nil
      unless hash['customPieChartItems'].nil?
        custom_pie_chart_items = []
        hash['customPieChartItems'].each do |structure|
          custom_pie_chart_items << (CustomPieChartItemModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkTrafficAnalysisSettingsModel.new(mode,
                                                    custom_pie_chart_items)
    end
  end
end
