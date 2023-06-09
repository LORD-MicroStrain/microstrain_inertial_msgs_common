# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/CV7+Online/external_content/dcp/Data/sensor_data/data/mip_field_sensor_overrange_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MicrostrainHeader header

# Parsed out representation of the status bitfield
bool status_accel_x
bool status_accel_y
bool status_accel_z
bool status_gyro_x
bool status_gyro_y
bool status_gyro_z
bool status_mag_x
bool status_mag_y
bool status_mag_z
bool status_press