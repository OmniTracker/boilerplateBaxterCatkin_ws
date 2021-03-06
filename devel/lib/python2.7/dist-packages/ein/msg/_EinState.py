# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ein/EinState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import sensor_msgs.msg
import shape_msgs.msg
import object_recognition_msgs.msg
import std_msgs.msg

class EinState(genpy.Message):
  _md5sum = "b800e8474fded9c133c7277e1ccfe9b4"
  _type = "ein/EinState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# the entire relevant state of the ein system
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
# database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
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
# contents of the "fields" array.

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
"""
  __slots__ = ['zero_g','movement_state','patrol_state','place_mode','patrol_mode','idle_mode','objects','call_stack','data_stack','words','state_string']
  _slot_types = ['int32','int32','int32','int32','int32','int32','object_recognition_msgs/RecognizedObject[]','string[]','string[]','string[]','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       zero_g,movement_state,patrol_state,place_mode,patrol_mode,idle_mode,objects,call_stack,data_stack,words,state_string

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EinState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.zero_g is None:
        self.zero_g = 0
      if self.movement_state is None:
        self.movement_state = 0
      if self.patrol_state is None:
        self.patrol_state = 0
      if self.place_mode is None:
        self.place_mode = 0
      if self.patrol_mode is None:
        self.patrol_mode = 0
      if self.idle_mode is None:
        self.idle_mode = 0
      if self.objects is None:
        self.objects = []
      if self.call_stack is None:
        self.call_stack = []
      if self.data_stack is None:
        self.data_stack = []
      if self.words is None:
        self.words = []
      if self.state_string is None:
        self.state_string = ''
    else:
      self.zero_g = 0
      self.movement_state = 0
      self.patrol_state = 0
      self.place_mode = 0
      self.patrol_mode = 0
      self.idle_mode = 0
      self.objects = []
      self.call_stack = []
      self.data_stack = []
      self.words = []
      self.state_string = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_6i.pack(_x.zero_g, _x.movement_state, _x.patrol_state, _x.place_mode, _x.patrol_mode, _x.idle_mode))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _v1 = val1.header
        buff.write(_struct_I.pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.type
        _x = _v3.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v3.db
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_f.pack(val1.confidence))
        length = len(val1.point_clouds)
        buff.write(_struct_I.pack(length))
        for val2 in val1.point_clouds:
          _v4 = val2.header
          buff.write(_struct_I.pack(_v4.seq))
          _v5 = _v4.stamp
          _x = _v5
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v4.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2
          buff.write(_struct_2I.pack(_x.height, _x.width))
          length = len(val2.fields)
          buff.write(_struct_I.pack(length))
          for val3 in val2.fields:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            if python3:
              buff.write(struct.pack('<I%sB'%length, length, *_x))
            else:
              buff.write(struct.pack('<I%ss'%length, length, _x))
            _x = val3
            buff.write(_struct_IBI.pack(_x.offset, _x.datatype, _x.count))
          _x = val2
          buff.write(_struct_B2I.pack(_x.is_bigendian, _x.point_step, _x.row_step))
          _x = val2.data
          length = len(_x)
          # - if encoded as a list instead, serialize as bytes instead of string
          if type(_x) in [list, tuple]:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          buff.write(_struct_B.pack(val2.is_dense))
        _v6 = val1.bounding_mesh
        length = len(_v6.triangles)
        buff.write(_struct_I.pack(length))
        for val3 in _v6.triangles:
          buff.write(_struct_3I.pack(*val3.vertex_indices))
        length = len(_v6.vertices)
        buff.write(_struct_I.pack(length))
        for val3 in _v6.vertices:
          _x = val3
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.bounding_contours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.bounding_contours:
          _x = val2
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v7 = val1.pose
        _v8 = _v7.header
        buff.write(_struct_I.pack(_v8.seq))
        _v9 = _v8.stamp
        _x = _v9
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v8.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v10 = _v7.pose
        _v11 = _v10.pose
        _v12 = _v11.position
        _x = _v12
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v13 = _v11.orientation
        _x = _v13
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_struct_36d.pack(*_v10.covariance))
      length = len(self.call_stack)
      buff.write(_struct_I.pack(length))
      for val1 in self.call_stack:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.data_stack)
      buff.write(_struct_I.pack(length))
      for val1 in self.data_stack:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.words)
      buff.write(_struct_I.pack(length))
      for val1 in self.words:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      _x = self.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.objects is None:
        self.objects = None
      end = 0
      _x = self
      start = end
      end += 24
      (_x.zero_g, _x.movement_state, _x.patrol_state, _x.place_mode, _x.patrol_mode, _x.idle_mode,) = _struct_6i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = object_recognition_msgs.msg.RecognizedObject()
        _v14 = val1.header
        start = end
        end += 4
        (_v14.seq,) = _struct_I.unpack(str[start:end])
        _v15 = _v14.stamp
        _x = _v15
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v14.frame_id = str[start:end].decode('utf-8')
        else:
          _v14.frame_id = str[start:end]
        _v16 = val1.type
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.key = str[start:end].decode('utf-8')
        else:
          _v16.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.db = str[start:end].decode('utf-8')
        else:
          _v16.db = str[start:end]
        start = end
        end += 4
        (val1.confidence,) = _struct_f.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.point_clouds = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.PointCloud2()
          _v17 = val2.header
          start = end
          end += 4
          (_v17.seq,) = _struct_I.unpack(str[start:end])
          _v18 = _v17.stamp
          _x = _v18
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v17.frame_id = str[start:end].decode('utf-8')
          else:
            _v17.frame_id = str[start:end]
          _x = val2
          start = end
          end += 8
          (_x.height, _x.width,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.fields = []
          for i in range(0, length):
            val3 = sensor_msgs.msg.PointField()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 9
            (_x.offset, _x.datatype, _x.count,) = _struct_IBI.unpack(str[start:end])
            val2.fields.append(val3)
          _x = val2
          start = end
          end += 9
          (_x.is_bigendian, _x.point_step, _x.row_step,) = _struct_B2I.unpack(str[start:end])
          val2.is_bigendian = bool(val2.is_bigendian)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          val2.data = str[start:end]
          start = end
          end += 1
          (val2.is_dense,) = _struct_B.unpack(str[start:end])
          val2.is_dense = bool(val2.is_dense)
          val1.point_clouds.append(val2)
        _v19 = val1.bounding_mesh
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v19.triangles = []
        for i in range(0, length):
          val3 = shape_msgs.msg.MeshTriangle()
          start = end
          end += 12
          val3.vertex_indices = _struct_3I.unpack(str[start:end])
          _v19.triangles.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v19.vertices = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v19.vertices.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.bounding_contours = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          val1.bounding_contours.append(val2)
        _v20 = val1.pose
        _v21 = _v20.header
        start = end
        end += 4
        (_v21.seq,) = _struct_I.unpack(str[start:end])
        _v22 = _v21.stamp
        _x = _v22
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v21.frame_id = str[start:end].decode('utf-8')
        else:
          _v21.frame_id = str[start:end]
        _v23 = _v20.pose
        _v24 = _v23.pose
        _v25 = _v24.position
        _x = _v25
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v26 = _v24.orientation
        _x = _v26
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 288
        _v23.covariance = _struct_36d.unpack(str[start:end])
        self.objects.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.call_stack = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.call_stack.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data_stack = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.data_stack.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.words = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.words.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_string = str[start:end].decode('utf-8')
      else:
        self.state_string = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_6i.pack(_x.zero_g, _x.movement_state, _x.patrol_state, _x.place_mode, _x.patrol_mode, _x.idle_mode))
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _v27 = val1.header
        buff.write(_struct_I.pack(_v27.seq))
        _v28 = _v27.stamp
        _x = _v28
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v27.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v29 = val1.type
        _x = _v29.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v29.db
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_f.pack(val1.confidence))
        length = len(val1.point_clouds)
        buff.write(_struct_I.pack(length))
        for val2 in val1.point_clouds:
          _v30 = val2.header
          buff.write(_struct_I.pack(_v30.seq))
          _v31 = _v30.stamp
          _x = _v31
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v30.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2
          buff.write(_struct_2I.pack(_x.height, _x.width))
          length = len(val2.fields)
          buff.write(_struct_I.pack(length))
          for val3 in val2.fields:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            if python3:
              buff.write(struct.pack('<I%sB'%length, length, *_x))
            else:
              buff.write(struct.pack('<I%ss'%length, length, _x))
            _x = val3
            buff.write(_struct_IBI.pack(_x.offset, _x.datatype, _x.count))
          _x = val2
          buff.write(_struct_B2I.pack(_x.is_bigendian, _x.point_step, _x.row_step))
          _x = val2.data
          length = len(_x)
          # - if encoded as a list instead, serialize as bytes instead of string
          if type(_x) in [list, tuple]:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          buff.write(_struct_B.pack(val2.is_dense))
        _v32 = val1.bounding_mesh
        length = len(_v32.triangles)
        buff.write(_struct_I.pack(length))
        for val3 in _v32.triangles:
          buff.write(val3.vertex_indices.tostring())
        length = len(_v32.vertices)
        buff.write(_struct_I.pack(length))
        for val3 in _v32.vertices:
          _x = val3
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.bounding_contours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.bounding_contours:
          _x = val2
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v33 = val1.pose
        _v34 = _v33.header
        buff.write(_struct_I.pack(_v34.seq))
        _v35 = _v34.stamp
        _x = _v35
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v34.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v36 = _v33.pose
        _v37 = _v36.pose
        _v38 = _v37.position
        _x = _v38
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v39 = _v37.orientation
        _x = _v39
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_v36.covariance.tostring())
      length = len(self.call_stack)
      buff.write(_struct_I.pack(length))
      for val1 in self.call_stack:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.data_stack)
      buff.write(_struct_I.pack(length))
      for val1 in self.data_stack:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.words)
      buff.write(_struct_I.pack(length))
      for val1 in self.words:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *val1))
        else:
          buff.write(struct.pack('<I%ss'%length, length, val1))
      _x = self.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.objects is None:
        self.objects = None
      end = 0
      _x = self
      start = end
      end += 24
      (_x.zero_g, _x.movement_state, _x.patrol_state, _x.place_mode, _x.patrol_mode, _x.idle_mode,) = _struct_6i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = object_recognition_msgs.msg.RecognizedObject()
        _v40 = val1.header
        start = end
        end += 4
        (_v40.seq,) = _struct_I.unpack(str[start:end])
        _v41 = _v40.stamp
        _x = _v41
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v40.frame_id = str[start:end].decode('utf-8')
        else:
          _v40.frame_id = str[start:end]
        _v42 = val1.type
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v42.key = str[start:end].decode('utf-8')
        else:
          _v42.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v42.db = str[start:end].decode('utf-8')
        else:
          _v42.db = str[start:end]
        start = end
        end += 4
        (val1.confidence,) = _struct_f.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.point_clouds = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.PointCloud2()
          _v43 = val2.header
          start = end
          end += 4
          (_v43.seq,) = _struct_I.unpack(str[start:end])
          _v44 = _v43.stamp
          _x = _v44
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v43.frame_id = str[start:end].decode('utf-8')
          else:
            _v43.frame_id = str[start:end]
          _x = val2
          start = end
          end += 8
          (_x.height, _x.width,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.fields = []
          for i in range(0, length):
            val3 = sensor_msgs.msg.PointField()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 9
            (_x.offset, _x.datatype, _x.count,) = _struct_IBI.unpack(str[start:end])
            val2.fields.append(val3)
          _x = val2
          start = end
          end += 9
          (_x.is_bigendian, _x.point_step, _x.row_step,) = _struct_B2I.unpack(str[start:end])
          val2.is_bigendian = bool(val2.is_bigendian)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          val2.data = str[start:end]
          start = end
          end += 1
          (val2.is_dense,) = _struct_B.unpack(str[start:end])
          val2.is_dense = bool(val2.is_dense)
          val1.point_clouds.append(val2)
        _v45 = val1.bounding_mesh
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v45.triangles = []
        for i in range(0, length):
          val3 = shape_msgs.msg.MeshTriangle()
          start = end
          end += 12
          val3.vertex_indices = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=3)
          _v45.triangles.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v45.vertices = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v45.vertices.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.bounding_contours = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          val1.bounding_contours.append(val2)
        _v46 = val1.pose
        _v47 = _v46.header
        start = end
        end += 4
        (_v47.seq,) = _struct_I.unpack(str[start:end])
        _v48 = _v47.stamp
        _x = _v48
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v47.frame_id = str[start:end].decode('utf-8')
        else:
          _v47.frame_id = str[start:end]
        _v49 = _v46.pose
        _v50 = _v49.pose
        _v51 = _v50.position
        _x = _v51
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v52 = _v50.orientation
        _x = _v52
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 288
        _v49.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
        self.objects.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.call_stack = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.call_stack.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data_stack = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.data_stack.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.words = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.words.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_string = str[start:end].decode('utf-8')
      else:
        self.state_string = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_IBI = struct.Struct("<IBI")
_struct_B = struct.Struct("<B")
_struct_f = struct.Struct("<f")
_struct_6i = struct.Struct("<6i")
_struct_36d = struct.Struct("<36d")
_struct_3I = struct.Struct("<3I")
_struct_B2I = struct.Struct("<B2I")
_struct_4d = struct.Struct("<4d")
_struct_2I = struct.Struct("<2I")
_struct_3d = struct.Struct("<3d")
