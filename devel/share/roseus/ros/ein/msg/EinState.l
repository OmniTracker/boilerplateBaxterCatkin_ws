;; Auto-generated. Do not edit!


(when (boundp 'ein::EinState)
  (if (not (find-package "EIN"))
    (make-package "EIN"))
  (shadow 'EinState (find-package "EIN")))
(unless (find-package "EIN::EINSTATE")
  (make-package "EIN::EINSTATE"))

(in-package "ROS")
;;//! \htmlinclude EinState.msg.html
(if (not (find-package "OBJECT_RECOGNITION_MSGS"))
  (ros::roseus-add-msgs "object_recognition_msgs"))


(defclass ein::EinState
  :super ros::object
  :slots (_zero_g _movement_state _patrol_state _place_mode _patrol_mode _idle_mode _objects _call_stack _data_stack _words _state_string ))

(defmethod ein::EinState
  (:init
   (&key
    ((:zero_g __zero_g) 0)
    ((:movement_state __movement_state) 0)
    ((:patrol_state __patrol_state) 0)
    ((:place_mode __place_mode) 0)
    ((:patrol_mode __patrol_mode) 0)
    ((:idle_mode __idle_mode) 0)
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance object_recognition_msgs::RecognizedObject :init) r)) r))
    ((:call_stack __call_stack) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:data_stack __data_stack) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:words __words) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:state_string __state_string) "")
    )
   (send-super :init)
   (setq _zero_g (round __zero_g))
   (setq _movement_state (round __movement_state))
   (setq _patrol_state (round __patrol_state))
   (setq _place_mode (round __place_mode))
   (setq _patrol_mode (round __patrol_mode))
   (setq _idle_mode (round __idle_mode))
   (setq _objects __objects)
   (setq _call_stack __call_stack)
   (setq _data_stack __data_stack)
   (setq _words __words)
   (setq _state_string (string __state_string))
   self)
  (:zero_g
   (&optional __zero_g)
   (if __zero_g (setq _zero_g __zero_g)) _zero_g)
  (:movement_state
   (&optional __movement_state)
   (if __movement_state (setq _movement_state __movement_state)) _movement_state)
  (:patrol_state
   (&optional __patrol_state)
   (if __patrol_state (setq _patrol_state __patrol_state)) _patrol_state)
  (:place_mode
   (&optional __place_mode)
   (if __place_mode (setq _place_mode __place_mode)) _place_mode)
  (:patrol_mode
   (&optional __patrol_mode)
   (if __patrol_mode (setq _patrol_mode __patrol_mode)) _patrol_mode)
  (:idle_mode
   (&optional __idle_mode)
   (if __idle_mode (setq _idle_mode __idle_mode)) _idle_mode)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:call_stack
   (&optional __call_stack)
   (if __call_stack (setq _call_stack __call_stack)) _call_stack)
  (:data_stack
   (&optional __data_stack)
   (if __data_stack (setq _data_stack __data_stack)) _data_stack)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:state_string
   (&optional __state_string)
   (if __state_string (setq _state_string __state_string)) _state_string)
  (:serialization-length
   ()
   (+
    ;; int32 _zero_g
    4
    ;; int32 _movement_state
    4
    ;; int32 _patrol_state
    4
    ;; int32 _place_mode
    4
    ;; int32 _patrol_mode
    4
    ;; int32 _idle_mode
    4
    ;; object_recognition_msgs/RecognizedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; string[] _call_stack
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _call_stack)) 4
    ;; string[] _data_stack
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data_stack)) 4
    ;; string[] _words
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _words)) 4
    ;; string _state_string
    4 (length _state_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _zero_g
       (write-long _zero_g s)
     ;; int32 _movement_state
       (write-long _movement_state s)
     ;; int32 _patrol_state
       (write-long _patrol_state s)
     ;; int32 _place_mode
       (write-long _place_mode s)
     ;; int32 _patrol_mode
       (write-long _patrol_mode s)
     ;; int32 _idle_mode
       (write-long _idle_mode s)
     ;; object_recognition_msgs/RecognizedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; string[] _call_stack
     (write-long (length _call_stack) s)
     (dolist (elem _call_stack)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _data_stack
     (write-long (length _data_stack) s)
     (dolist (elem _data_stack)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _words
     (write-long (length _words) s)
     (dolist (elem _words)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _state_string
       (write-long (length _state_string) s) (princ _state_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _zero_g
     (setq _zero_g (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _movement_state
     (setq _movement_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _patrol_state
     (setq _patrol_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _place_mode
     (setq _place_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _patrol_mode
     (setq _patrol_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _idle_mode
     (setq _idle_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; object_recognition_msgs/RecognizedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance object_recognition_msgs::RecognizedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _call_stack
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _call_stack (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _call_stack i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _data_stack
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data_stack (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data_stack i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _words
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _words (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _words i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _state_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ein::EinState :md5sum-) "b800e8474fded9c133c7277e1ccfe9b4")
(setf (get ein::EinState :datatype-) "ein/EinState")
(setf (get ein::EinState :definition-)
      "# the entire relevant state of the ein system
# please see config.h for details

int32 zero_g

int32 movement_state

int32 patrol_state

int32 place_mode

int32 patrol_mode

int32 idle_mode

object_recognition_msgs/RecognizedObject[] objects

string[] call_stack

string[] data_stack

string[] words

string state_string

================================================================================
MSG: object_recognition_msgs/RecognizedObject
##################################################### HEADER ###########################################################

# The header frame corresponds to the pose frame, NOT the point_cloud frame.
Header header

################################################## OBJECT INFO #########################################################

# Contains information about the type and the position of a found object
# Some of those fields might not be filled because the used techniques do not fill them or because the user does not
# request them

# The type of the found object
object_recognition_msgs/ObjectType type

#confidence: how sure you are it is that object and not another one.
# It is between 0 and 1 and the closer to one it is the better
float32 confidence

################################################ OBJECT CLUSTERS #######################################################

# Sometimes you can extract the 3d points that belong to the object, in the frames of the original sensors
# (it is an array as you might have several sensors)
sensor_msgs/PointCloud2[] point_clouds

# Sometimes, you can only provide a bounding box/shape, even in 3d
# This is in the pose frame
shape_msgs/Mesh bounding_mesh

# Sometimes, you only have 2d input so you can't really give a pose, you just get a contour, or a box
# The last point will be linked to the first one automatically
geometry_msgs/Point[] bounding_contours

#################################################### POSE INFO #########################################################

# This is the result that everybody expects : the pose in some frame given with the input. The units are radian/meters
# as usual
geometry_msgs/PoseWithCovarianceStamped pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: object_recognition_msgs/ObjectType
################################################## OBJECT ID #########################################################

# Contains information about the type of a found object. Those two sets of parameters together uniquely define an
# object

# The key of the found object: the unique identifier in the given db
string key

# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"
# There is no conventional format for those parameters and it's nice to keep that flexibility.
# The object_recognition_core as a generic DB type that can read those fields
# Current examples:
# For CouchDB:
#   type: 'CouchDB'
#   root: 'http://localhost:5984'
#   collection: 'object_recognition'
# For SQL household database:
#   type: 'SqlHousehold'
#   host: 'wgs36'
#   port: 5432
#   user: 'willow'
#   password: 'willow'
#   name: 'household_objects'
#   module: 'tabletop'
string db

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ein/EinState "b800e8474fded9c133c7277e1ccfe9b4")


