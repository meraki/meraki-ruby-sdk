# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkCameraQualityRetentionProfileModel Model.
  class UpdateNetworkCameraQualityRetentionProfileModel < BaseModel
    # The name of the new profile. Must be unique.
    # @return [String]
    attr_accessor :name

    # Deletes footage older than 3 days in which no motion was detected. Can be
    # either true or false. Defaults to false.
    # @return [Boolean]
    attr_accessor :motion_based_retention_enabled

    # Disable features that require additional bandwidth such as Motion Recap.
    # Can be either true or false. Defaults to false.
    # @return [Boolean]
    attr_accessor :restricted_bandwidth_mode_enabled

    # Whether or not to record audio. Can be either true or false. Defaults to
    # false.
    # @return [Boolean]
    attr_accessor :audio_recording_enabled

    # Create redundant video backup using Cloud Archive. Can be either true or
    # false. Defaults to false.
    # @return [Boolean]
    attr_accessor :cloud_archive_enabled

    # The version of the motion detector that will be used by the camera. Only
    # applies to Gen 2 cameras. Defaults to v2.
    # @return [Integer]
    attr_accessor :motion_detector_version

    # Schedule for which this camera will record video, or 'null' to always
    # record.
    # @return [String]
    attr_accessor :schedule_id

    # The maximum number of days for which the data will be stored, or 'null' to
    # keep data until storage space runs out. If the former, it can be one of
    # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 14, 30, 60, 90] days
    # @return [Integer]
    attr_accessor :max_retention_days

    # Video quality and resolution settings for all the camera models.
    # @return [VideoSettingsModel]
    attr_accessor :video_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['motion_based_retention_enabled'] = 'motionBasedRetentionEnabled'
      @_hash['restricted_bandwidth_mode_enabled'] =
        'restrictedBandwidthModeEnabled'
      @_hash['audio_recording_enabled'] = 'audioRecordingEnabled'
      @_hash['cloud_archive_enabled'] = 'cloudArchiveEnabled'
      @_hash['motion_detector_version'] = 'motionDetectorVersion'
      @_hash['schedule_id'] = 'scheduleId'
      @_hash['max_retention_days'] = 'maxRetentionDays'
      @_hash['video_settings'] = 'videoSettings'
      @_hash
    end

    def initialize(name = nil,
                   motion_based_retention_enabled = nil,
                   restricted_bandwidth_mode_enabled = nil,
                   audio_recording_enabled = nil,
                   cloud_archive_enabled = nil,
                   motion_detector_version = nil,
                   schedule_id = nil,
                   max_retention_days = nil,
                   video_settings = nil)
      @name = name
      @motion_based_retention_enabled = motion_based_retention_enabled
      @restricted_bandwidth_mode_enabled = restricted_bandwidth_mode_enabled
      @audio_recording_enabled = audio_recording_enabled
      @cloud_archive_enabled = cloud_archive_enabled
      @motion_detector_version = motion_detector_version
      @schedule_id = schedule_id
      @max_retention_days = max_retention_days
      @video_settings = video_settings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      motion_based_retention_enabled = hash['motionBasedRetentionEnabled']
      restricted_bandwidth_mode_enabled = hash['restrictedBandwidthModeEnabled']
      audio_recording_enabled = hash['audioRecordingEnabled']
      cloud_archive_enabled = hash['cloudArchiveEnabled']
      motion_detector_version = hash['motionDetectorVersion']
      schedule_id = hash['scheduleId']
      max_retention_days = hash['maxRetentionDays']
      video_settings = VideoSettingsModel.from_hash(hash['videoSettings']) if
        hash['videoSettings']

      # Create object from extracted values.
      UpdateNetworkCameraQualityRetentionProfileModel.new(name,
                                                          motion_based_retention_enabled,
                                                          restricted_bandwidth_mode_enabled,
                                                          audio_recording_enabled,
                                                          cloud_archive_enabled,
                                                          motion_detector_version,
                                                          schedule_id,
                                                          max_retention_days,
                                                          video_settings)
    end
  end
end
