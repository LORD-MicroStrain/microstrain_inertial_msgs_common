# Will be published by the driver with dual antenna heading and also subscribed to as an aiding measurement for devices that support it

# Standard ROS header
#   header.stamp will be populated with the closest ROS time that the heading was sampled
#   header.frame_id specifies where the sensor that sampled this information is located
std_msgs/Header header

# Heading (radians)
float32 heading

# Heading uncertainty (radians)
float32 uncertainty