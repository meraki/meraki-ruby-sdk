# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings for describing the modifications to various Help page features.
  # Each property in this object accepts one of     'default or inherit' (do not
  # modify functionality), 'hide' (remove the section from Dashboard), or 'show'
  # (always show     the section on Dashboard). Some properties in this object
  # also accept custom HTML used to replace the section on     Dashboard; see
  # the documentation for each property to see the allowed values.
  class HelpSettings1Model < BaseModel
    # The Help tab, under which all support information resides. If this tab is
    # hidden, no other 'Help' branding
    #     customizations will be visible. Can be one of 'default or inherit',
    # 'hide' or 'show'.
    # @return [HelpTabEnum]
    attr_accessor :help_tab

    # The 'Help -> Get Help' subtab on which Cisco Meraki KB, Product Manuals,
    # and Support/Case Information are displayed. Note
    #     that if this subtab is hidden, branding customizations for the KB on
    # 'Get help', Cisco Meraki product documentation,
    #     and support contact info will not be visible. Can be one of 'default
    # or inherit', 'hide' or 'show'.
    # @return [GetHelpSubtabEnum]
    attr_accessor :get_help_subtab

    # The 'Help -> Community' subtab which provides a link to Meraki Community.
    # Can be one of 'default or inherit', 'hide' or 'show'.
    # @return [CommunitySubtabEnum]
    attr_accessor :community_subtab

    # The 'Help -> Cases' Dashboard subtab on which Cisco Meraki support cases
    # for this organization can be managed. Can be one
    #     of 'default or inherit', 'hide' or 'show'.
    # @return [CasesSubtabEnum]
    attr_accessor :cases_subtab

    # The 'Help -> Data protection requests' Dashboard subtab on which requests
    # to delete, restrict, or export end-user data can
    #     be audited. Can be one of 'default or inherit', 'hide' or 'show'.
    # @return [DataProtectionRequestsSubtabEnum]
    attr_accessor :data_protection_requests_subtab

    # The KB search box which appears on the Help page. Can be one of 'default
    # or inherit', 'hide', 'show', or a replacement custom HTML string.
    # @return [String]
    attr_accessor :get_help_subtab_knowledge_base_search

    # The universal search box always visible on Dashboard will, by default,
    # present results from the Meraki KB. This configures
    #     whether these Meraki KB results should be returned. Can be one of
    # 'default or inherit', 'hide' or 'show'.
    # @return [UniversalSearchKnowledgeBaseSearchEnum]
    attr_accessor :universal_search_knowledge_base_search

    # The 'Product Manuals' section of the 'Help -> Get Help' subtab. Can be one
    # of 'default or inherit', 'hide', 'show', or a replacement custom HTML
    # string.
    # @return [String]
    attr_accessor :cisco_meraki_product_documentation

    # The 'Contact Meraki Support' section of the 'Help -> Get Help' subtab. Can
    # be one of 'default or inherit', 'hide', 'show', or a replacement custom
    # HTML string.
    # @return [String]
    attr_accessor :support_contact_info

    # The 'Help -> New features' subtab where new Dashboard features are
    # detailed. Can be one of 'default or inherit', 'hide' or 'show'.
    # @return [NewFeaturesSubtabEnum]
    attr_accessor :new_features_subtab

    # The 'Help -> Firewall info' subtab where necessary upstream firewall rules
    # for communication to the Cisco Meraki cloud are
    #     listed. Can be one of 'default or inherit', 'hide' or 'show'.
    # @return [FirewallInfoSubtabEnum]
    attr_accessor :firewall_info_subtab

    # The 'Help -> API docs' subtab where a detailed description of the
    # Dashboard API is listed. Can be one of
    #     'default or inherit', 'hide' or 'show'.
    # @return [ApiDocsSubtabEnum]
    attr_accessor :api_docs_subtab

    # The 'Help -> Replacement info' subtab where important information
    # regarding device replacements is detailed. Can be one of
    #     'default or inherit', 'hide' or 'show'.
    # @return [HardwareReplacementsSubtabEnum]
    attr_accessor :hardware_replacements_subtab

    # The 'SM Forums' subtab which links to community-based support for Cisco
    # Meraki Systems Manager. Only configurable for
    #     organizations that contain Systems Manager networks. Can be one of
    # 'default or inherit', 'hide' or 'show'.
    # @return [SmForumsEnum]
    attr_accessor :sm_forums

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['help_tab'] = 'helpTab'
      @_hash['get_help_subtab'] = 'getHelpSubtab'
      @_hash['community_subtab'] = 'communitySubtab'
      @_hash['cases_subtab'] = 'casesSubtab'
      @_hash['data_protection_requests_subtab'] =
        'dataProtectionRequestsSubtab'
      @_hash['get_help_subtab_knowledge_base_search'] =
        'getHelpSubtabKnowledgeBaseSearch'
      @_hash['universal_search_knowledge_base_search'] =
        'universalSearchKnowledgeBaseSearch'
      @_hash['cisco_meraki_product_documentation'] =
        'ciscoMerakiProductDocumentation'
      @_hash['support_contact_info'] = 'supportContactInfo'
      @_hash['new_features_subtab'] = 'newFeaturesSubtab'
      @_hash['firewall_info_subtab'] = 'firewallInfoSubtab'
      @_hash['api_docs_subtab'] = 'apiDocsSubtab'
      @_hash['hardware_replacements_subtab'] = 'hardwareReplacementsSubtab'
      @_hash['sm_forums'] = 'smForums'
      @_hash
    end

    def initialize(help_tab = nil,
                   get_help_subtab = nil,
                   community_subtab = nil,
                   cases_subtab = nil,
                   data_protection_requests_subtab = nil,
                   get_help_subtab_knowledge_base_search = nil,
                   universal_search_knowledge_base_search = nil,
                   cisco_meraki_product_documentation = nil,
                   support_contact_info = nil,
                   new_features_subtab = nil,
                   firewall_info_subtab = nil,
                   api_docs_subtab = nil,
                   hardware_replacements_subtab = nil,
                   sm_forums = nil)
      @help_tab = help_tab
      @get_help_subtab = get_help_subtab
      @community_subtab = community_subtab
      @cases_subtab = cases_subtab
      @data_protection_requests_subtab = data_protection_requests_subtab
      @get_help_subtab_knowledge_base_search =
        get_help_subtab_knowledge_base_search
      @universal_search_knowledge_base_search =
        universal_search_knowledge_base_search
      @cisco_meraki_product_documentation = cisco_meraki_product_documentation
      @support_contact_info = support_contact_info
      @new_features_subtab = new_features_subtab
      @firewall_info_subtab = firewall_info_subtab
      @api_docs_subtab = api_docs_subtab
      @hardware_replacements_subtab = hardware_replacements_subtab
      @sm_forums = sm_forums
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      help_tab = hash['helpTab']
      get_help_subtab = hash['getHelpSubtab']
      community_subtab = hash['communitySubtab']
      cases_subtab = hash['casesSubtab']
      data_protection_requests_subtab = hash['dataProtectionRequestsSubtab']
      get_help_subtab_knowledge_base_search =
        hash['getHelpSubtabKnowledgeBaseSearch']
      universal_search_knowledge_base_search =
        hash['universalSearchKnowledgeBaseSearch']
      cisco_meraki_product_documentation =
        hash['ciscoMerakiProductDocumentation']
      support_contact_info = hash['supportContactInfo']
      new_features_subtab = hash['newFeaturesSubtab']
      firewall_info_subtab = hash['firewallInfoSubtab']
      api_docs_subtab = hash['apiDocsSubtab']
      hardware_replacements_subtab = hash['hardwareReplacementsSubtab']
      sm_forums = hash['smForums']

      # Create object from extracted values.
      HelpSettings1Model.new(help_tab,
                             get_help_subtab,
                             community_subtab,
                             cases_subtab,
                             data_protection_requests_subtab,
                             get_help_subtab_knowledge_base_search,
                             universal_search_knowledge_base_search,
                             cisco_meraki_product_documentation,
                             support_contact_info,
                             new_features_subtab,
                             firewall_info_subtab,
                             api_docs_subtab,
                             hardware_replacements_subtab,
                             sm_forums)
    end
  end
end
