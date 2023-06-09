# Message definition for the MIP field https://s3.amazonaws.com/files.microstrain.com/GQ7+User+Manual/external_content/dcp/Data/filter_data/data/mip_field_filter_status.htm

# Header containing common information
#   header.frame_id has no meaning in this message
microstrain_inertial_msgs/MicrostrainHeader header

# Device-specific filter state. Please consult the user manual for definition. See FILTER_STATE_* enums for possible values
uint16 filter_state

# Device-specific dynamics mode. Please consult the user manual for definition. See DYNAMICS_MODE_* enums for possible values
# Note that for prospect devices (GQ7, CV7, etc), this field has a default value, and should be mostly ignored
uint16 dynamics_mode

# Parsed out version of the Status Flags bitfield when the connected device is a philo device (GX5, CX5, CV5, etc)
bool status_flags_gx5_init_no_attitude
bool status_flags_gx5_init_no_position_velocity
bool status_flags_gx5_run_imu_unavailable
bool status_flags_gx5_run_gps_unavailable
bool status_flags_gx5_run_matrix_singularity
bool status_flags_gx5_run_position_covariance_warning
bool status_flags_gx5_run_velocity_covariance_warning
bool status_flags_gx5_run_attitude_covariance_warning
bool status_flags_gx5_run_nan_in_solution_warning
bool status_flags_gx5_run_gyro_bias_est_high_warning
bool status_flags_gx5_run_accel_bias_est_high_warning
bool status_flags_gx5_run_gyro_scale_factor_est_high_warning
bool status_flags_gx5_run_accel_scale_factor_est_high_warning
bool status_flags_gx5_run_mag_bias_est_high_warning
bool status_flags_gx5_run_ant_offset_correction_est_high_warning
bool status_flags_gx5_run_mag_hard_iron_est_high_warning
bool status_flags_gx5_run_mag_soft_iron_est_high_warning

# Parsed out version of the Status Flags bitfield when the connected device is a prospect device (GQ7, CV7, etc)
uint8 status_flags_gq7_filter_condition  # See STATUS_FLAGS_GQ7_FILTER_CONDITION_* enums for possible values
bool  status_flags_gq7_roll_pitch_warning
bool  status_flags_gq7_heading_warning
bool  status_flags_gq7_position_warning
bool  status_flags_gq7_velocity_warning
bool  status_flags_gq7_imu_bias_warning
bool  status_flags_gq7_gnss_clk_warning
bool  status_flags_gq7_antenna_lever_arm_warning
bool  status_flags_gq7_mounting_transform_warning
bool  status_flags_gq7_time_sync_warning  # No time synchronization pulse detected
bool  status_flags_gq7_solution_error  # This includes all bits between 12 and 15, if any of them are set there is a GQ7 solution error

# Possible values for filter_state when the connected device is a philo device (GX5, CX5, CV5, etc)
uint16 FILTER_STATE_GX5_STARTUP            = 0
uint16 FILTER_STATE_GX5_INIT               = 1
uint16 FILTER_STATE_GX5_RUN_SOLUTION_VALID = 2
uint16 FILTER_STATE_GX5_RUN_SOLUTION_ERROR = 3

# Possible values for filter_state when the connected device is a prospect device (GQ7, CV7, etc)
uint16 FILTER_STATE_GQ7_INIT      = 1
uint16 FILTER_STATE_GQ7_VERT_GYRO = 2
uint16 FILTER_STATE_GQ7_AHRS      = 3
uint16 FILTER_STATE_GQ7_FULL_NAV  = 4

# Possible values for dynamics_mode when the connected device is a philo device (GX5, CX5, CV5, etc)
uint16 DYNAMICS_MODE_GX5_PORTABLE   = 1
uint16 DYNAMICS_MODE_GX5_AUTOMOTIVE = 2
uint16 DYNAMICS_MODE_GX5_AIRBORNE   = 3

# Possible values for dynamics_mode when the connected device is a prospect device (GQ7, CV7, etc)
# Note that on older firmware the GQ7 will often report 0 for it's dynamics mode, it is strongly advised to ignore this field
uint16 DYNAMICS_MODE_GQ7_DEFAULT = 1

# Possible values for status_flags_gq7_filter_condition when the connected device is a prospect device (GQ7, CV7, etc)
uint8 STATUS_FLAGS_GQ7_FILTER_CONDITION_STABLE     = 1
uint8 STATUS_FLAGS_GQ7_FILTER_CONDITION_CONVERGING = 2
uint8 STATUS_FLAGS_GQ7_FILTER_CONDITION_UNSTABLE   = 3