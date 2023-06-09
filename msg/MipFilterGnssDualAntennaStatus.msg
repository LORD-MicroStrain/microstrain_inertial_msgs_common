# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_gnss_dual_antenna_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MicrostrainHeader header

# Last dual-antenna GNSS aiding measurement time of week (seconds)
float32 time_of_week

# Heading in radians
float32 heading

# Heading uncertainty in radians
float32 heading_unc

# Fix type indicator. See FIX_TYPE_* enums for possible values
uint8 fix_type

# Parsed out version of the Status Flags bitfield
uint8 status_flags_rcv_1_data_valid
uint8 status_flags_rcv_2_data_valid
uint8 status_flags_antenna_offsets_valid

# Possible values for fix_type
uint8 FIX_TYPE_FIX_NONE     = 0
uint8 FIX_TYPE_FIX_DA_FLOAT = 1
uint8 FIX_TYPE_FIX_DA_FIXED = 2