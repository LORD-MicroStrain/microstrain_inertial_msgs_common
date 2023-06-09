# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/gnss_corrections/data/mip_field_gnss_rtk_corrections_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MicrostrainHeader header

# GPS time of week (seconds)
float64 time_of_week

# GPS weeks since 1980 (weeks)
uint16 week_number

# Parsed out version of the Epoch Status bitfield
bool epoch_status_antenna_location_received
bool epoch_status_antenna_description_received
bool epoch_status_gps_received
bool epoch_status_glonass_received
bool epoch_status_beidou_received
bool epoch_status_using_gps_msm_messages  # Using MSM messages for GPS corrections instead of RTCM messages 1001-1004
bool epoch_status_using_glonass_msm_messages  # Using MSM messages for GLONASS corrections instead of RTCM messages 1009-1012
bool epoch_status_dongle_status_read_failed  # A read of the dongle status was attempted, but failed

# Modem State bits from the Dongle Status field. See MODEM_STATE_* enums for possible values
uint8 dongle_status_modem_state

# Connection Type bits from the Dongle Status field. See CONNECTION_TYPE_* enums for possible values
uint8 dongle_status_connection_type

# RSSI bits from the Dongle Status field. Units are in dBm
int8 dongle_status_rssi

# Signal Quality bits from the Dongle Status field.
# 0-10 indication of signal quality, 0 means unavailable/invalid/not connected, 1 is poor, 10 is excellent.
uint8 dongle_status_signal_quality

# Tower Change Indicator bits from the Dongle Status field.
# 4-bit value that increments each time a cell tower change occurs. Rolls over from 15 to 0.
uint8 dongle_status_tower_change_indicator

# NMEA Timeout Flag bit from the Dongle Status field.
# The device has not received a valid NMEA message from the GQ7 in the past 3 seconds
bool dongle_status_nmea_timeout_flag

# Server Timeout Flag bit from the Dongle Status field.
# The device has not received any communications with the server in the past 3 seconds.
bool dongle_status_server_timeout_flag

# RTCM Timeout Flag bit from the Dongle Status field.
# The device has not received a valid RTCM message from the server in the past 3 seconds.
bool dongle_status_rtcm_timeout_flag

# Device Out of Range Flag bit from the Dongle Status field
# The device's reported position is beyond the server-side configured distance to a base station and will not receive corrections
bool dongle_status_device_out_of_range_flag

# Corrections Unavailable Flag bit from the Dongle Status field
# The server is reporting that corrections are not available given the user's account settings
bool dongle_status_corrections_unavailable_flag

# Latency of last GPS correction (seconds)
float32 gps_correction_latency

# Latency of last GLONASS correction (seconds)
float32 glonass_correction_latency

# Latency of last Galileo correction (seconds)
float32 galileo_correction_latency

# Latency of last Beidou correction (seconds)
float32 beidou_correction_latency

# Possible values for dongle_modem_state
uint8   MODEM_STATE_OFF = 0
uint8   MODEM_STATE_NO_NETWORK = 1
uint8   MODEM_STATE_NETWORK_CONNECTED = 2
uint8   MODEM_STATE_CONFIGURING_DATA_CONTEXT = 3
uint8   MODEM_STATE_ACTIVATING_DATA_CONTEXT = 4
uint8   MODEM_STATE_CONFIGURING_SOCKET = 5
uint8   MODEM_STATE_WAITING_ON_SERVER_HANDSHAKE = 6
uint8   MODEM_STATE_CONNECTED_AND_IDLE = 7
uint8   MODEM_STATE_CONNECTED_AND_STREAMING = 8

# Possible values for dongle_connection_type
uint8   CONNECTION_TYPE_NO_CONNECTION = 0
uint8   CONNECTION_TYPE_CONNECTION_2G = 2
uint8   CONNECTION_TYPE_CONNECTION_3G = 3
uint8   CONNECTION_TYPE_CONNECTION_4G = 4
uint8   CONNECTION_TYPE_CONNECTION_5G = 5