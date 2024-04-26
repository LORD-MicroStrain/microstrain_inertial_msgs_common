# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/0x91/data/0x20.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

uint8 GNSS_ID_UNKNOWN = 0
uint8 GNSS_ID_GPS = 1
uint8 GNSS_ID_GLONASS = 2
uint8 GNSS_ID_GALILEO = 3
uint8 GNSS_ID_BEIDOU = 4
uint8 GNSS_ID_SBAS = 5

uint8 gnss_id

uint8 satellite_id

float32 elevation

float32 azimuth

bool healthy

MipGnssSatelliteStatusValidFlags valid_flags
