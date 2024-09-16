# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/0x91/data/0x22.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MipHeader header

uint8 index                     # Index of this field in this epoch.
uint8 count                     # Total number of fields in this epoch.

uint16 receiver_id              # When the measurement comes from RTCM, this will be the reference station ID; otherwise, it's the receiver number (1,2,...)
uint8 tracking_channel          # Channel the receiver is using to track this satellite.

uint8 GNSS_ID_UNKNOWN = 0
uint8 GNSS_ID_GPS = 1
uint8 GNSS_ID_GLONASS = 2
uint8 GNSS_ID_GALILEO = 3
uint8 GNSS_ID_BEIDOU = 4
uint8 GNSS_ID_SBAS = 5
uint8 gnss_id

uint8 satellite_id            # GNSS satellite id within the constellation.

uint8 SIGNAL_ID_UNKNOWN = 0
uint8 SIGNAL_ID_GPS_L1CA = 1
uint8 SIGNAL_ID_GPS_L1P = 2
uint8 SIGNAL_ID_GPS_L1Z = 3
uint8 SIGNAL_ID_GPS_L2CA = 4
uint8 SIGNAL_ID_GPS_L2P = 5
uint8 SIGNAL_ID_GPS_L2Z = 6
uint8 SIGNAL_ID_GPS_L2CL = 7
uint8 SIGNAL_ID_GPS_L2CM = 8
uint8 SIGNAL_ID_GPS_L2CML = 9
uint8 SIGNAL_ID_GPS_L5I = 10
uint8 SIGNAL_ID_GPS_L5Q = 11
uint8 SIGNAL_ID_GPS_L5IQ = 12
uint8 SIGNAL_ID_GPS_L1CD = 13
uint8 SIGNAL_ID_GPS_L1CP = 14
uint8 SIGNAL_ID_GPS_L1CDP = 15
uint8 SIGNAL_ID_GLONASS_G1CA = 32
uint8 SIGNAL_ID_GLONASS_G1P = 33
uint8 SIGNAL_ID_GLONASS_G2C = 34
uint8 SIGNAL_ID_GLONASS_G2P = 35
uint8 SIGNAL_ID_GALILEO_E1C = 64
uint8 SIGNAL_ID_GALILEO_E1A = 65
uint8 SIGNAL_ID_GALILEO_E1B = 66
uint8 SIGNAL_ID_GALILEO_E1BC = 67
uint8 SIGNAL_ID_GALILEO_E1ABC = 68
uint8 SIGNAL_ID_GALILEO_E6C = 69
uint8 SIGNAL_ID_GALILEO_E6A = 70
uint8 SIGNAL_ID_GALILEO_E6B = 71
uint8 SIGNAL_ID_GALILEO_E6BC = 72
uint8 SIGNAL_ID_GALILEO_E6ABC = 73
uint8 SIGNAL_ID_GALILEO_E5BI = 74
uint8 SIGNAL_ID_GALILEO_E5BQ = 75
uint8 SIGNAL_ID_GALILEO_E5BIQ = 76
uint8 SIGNAL_ID_GALILEO_E5ABI = 77
uint8 SIGNAL_ID_GALILEO_E5ABQ = 78
uint8 SIGNAL_ID_GALILEO_E5ABIQ = 79
uint8 SIGNAL_ID_GALILEO_E5AI = 80
uint8 SIGNAL_ID_GALILEO_E5AQ = 81
uint8 SIGNAL_ID_GALILEO_E5AIQ = 82
uint8 SIGNAL_ID_SBAS_L1CA = 96
uint8 SIGNAL_ID_SBAS_L5I = 97
uint8 SIGNAL_ID_SBAS_L5Q = 98
uint8 SIGNAL_ID_SBAS_L5IQ = 99
uint8 SIGNAL_ID_QZSS_L1CA = 128
uint8 SIGNAL_ID_QZSS_LEXS = 129
uint8 SIGNAL_ID_QZSS_LEXL = 130
uint8 SIGNAL_ID_QZSS_LEXSL = 131
uint8 SIGNAL_ID_QZSS_L2CM = 132
uint8 SIGNAL_ID_QZSS_L2CL = 133
uint8 SIGNAL_ID_QZSS_L2CML = 134
uint8 SIGNAL_ID_QZSS_L5I = 135
uint8 SIGNAL_ID_QZSS_L5Q = 136
uint8 SIGNAL_ID_QZSS_L5IQ = 137
uint8 SIGNAL_ID_QZSS_L1CD = 138
uint8 SIGNAL_ID_QZSS_L1CP = 139
uint8 SIGNAL_ID_QZSS_L1CDP = 140
uint8 SIGNAL_ID_BEIDOU_B1I = 160
uint8 SIGNAL_ID_BEIDOU_B1Q = 161
uint8 SIGNAL_ID_BEIDOU_B1IQ = 162
uint8 SIGNAL_ID_BEIDOU_B3I = 163
uint8 SIGNAL_ID_BEIDOU_B3Q = 164
uint8 SIGNAL_ID_BEIDOU_B3IQ = 165
uint8 SIGNAL_ID_BEIDOU_B2I = 166
uint8 SIGNAL_ID_BEIDOU_B2Q = 167
uint8 SIGNAL_ID_BEIDOU_B2IQ = 168
uint8 signal_id                       # Signal identifier for the satellite.

float32 signal_strength               # Carrier to noise ratio [dBHz].

uint8 QUALITY_NONE = 0
uint8 QUALITY_SEARCHING = 1
uint8 QUALITY_ACQUIRED = 2
uint8 QUALITY_UNUSABLE = 3
uint8 QUALITY_TIME_LOCKED = 4
uint8 QUALITY_FULLY_LOCKED = 5
uint8 quality                         # Indicator of signal quality.

float64 pseudorange                   # Pseudo-range measurement [meters].
float64 carrier_phase                 # Carrier phase measurement [Carrier periods].
float32 doppler                       # Measured doppler shift [Hz].
float32 range_uncertainty             # Uncertainty of the pseudo-range measurement [m].
float32 phase_uncertainty             # Uncertainty of the phase measurement [Carrier periods].
float32 doppler_uncertainty           # Uncertainty of the measured doppler shift [Hz].
float32 lock_time                     #  	DOC Minimum carrier phase lock time [s]. Note: the maximum value is dependent on the receiver.

MipGnssRawValidFlags valid_flags
