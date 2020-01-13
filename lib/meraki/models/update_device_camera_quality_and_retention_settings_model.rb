# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateDeviceCameraQualityAndRetentionSettingsModel Model.
  class UpdateDeviceCameraQualityAndRetentionSettingsModel < BaseModel
    # The ID of a quality and retention profile to assign to the camera. The
    # profile's settings will override all of the per-camera quality and
    # retention settings. If the value of this parameter is null, any existing
    # profile will be unassigned from the camera.
    # @return [String]
    attr_accessor :profile_id

    # Boolean indicating if motion-based retention is enabled(true) or
    # disabled(false) on the camera
    # @return [Boolean]
    attr_accessor :motion_based_retention_enabled

    # Boolean indicating if audio recording is enabled(true) or disabled(false)
    # on the camera
    # @return [Boolean]
    attr_accessor :audio_recording_enabled

    # Boolean indicating if restricted bandwidth is enabled(true) or
    # disabled(false) on the camera
    # @return [Boolean]
    attr_accessor :restricted_bandwidth_mode_enabled

    # Quality of the camera. Can be one of 'Standard', 'High' or 'Enhanced'. Not
    # all qualities are supported by every camera model.
    # @return [QualityEnum]
    attr_accessor :quality

    # Resolution of the camera. Can be one of '1280x720', '1920x1080',
    # '1080x1080' or '2058x2058'. Not all resolutions are supported by every
    # camera model.
    # @return [ResolutionEnum]
    attr_accessor :resolution

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['profile_id'] = 'profileId'
      @_hash['motion_based_retention_enabled'] = 'motionBasedRetentionEnabled'
      @_hash['audio_recording_enabled'] = 'audioRecordingEnabled'
      @_hash['restricted_bandwidth_mode_enabled'] =
        'restrictedBandwidthModeEnabled'
      @_hash['quality'] = 'quality'
      @_hash['resolution'] = 'resolution'
      @_hash
    end

    def initialize(profile_id = nil,
                   motion_based_retention_enabled = nil,
                   audio_recording_enabled = nil,
                   restricted_bandwidth_mode_enabled = nil,
                   quality = nil,
                   resolution = nil)
      @profile_id = profile_id
      @motion_based_retention_enabled = motion_based_retention_enabled
      @audio_recording_enabled = audio_recording_enabled
      @restricted_bandwidth_mode_enabled = restricted_bandwidth_mode_enabled
      @quality = quality
      @resolution = resolution
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      profile_id = hash['profileId']
      motion_based_retention_enabled = hash['motionBasedRetentionEnabled']
      audio_recording_enabled = hash['audioRecordingEnabled']
      restricted_bandwidth_mode_enabled = hash['restrictedBandwidthModeEnabled']
      quality = hash['quality']
      resolution = hash['resolution']

      # Create object from extracted values.
      UpdateDeviceCameraQualityAndRetentionSettingsModel.new(profile_id,
                                                             motion_based_retention_enabled,
                                                             audio_recording_enabled,
                                                             restricted_bandwidth_mode_enabled,
                                                             quality,
                                                             resolution)
    end
  end
end
