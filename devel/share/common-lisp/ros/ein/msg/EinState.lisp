; Auto-generated. Do not edit!


(cl:in-package ein-msg)


;//! \htmlinclude EinState.msg.html

(cl:defclass <EinState> (roslisp-msg-protocol:ros-message)
  ((zero_g
    :reader zero_g
    :initarg :zero_g
    :type cl:integer
    :initform 0)
   (movement_state
    :reader movement_state
    :initarg :movement_state
    :type cl:integer
    :initform 0)
   (patrol_state
    :reader patrol_state
    :initarg :patrol_state
    :type cl:integer
    :initform 0)
   (place_mode
    :reader place_mode
    :initarg :place_mode
    :type cl:integer
    :initform 0)
   (patrol_mode
    :reader patrol_mode
    :initarg :patrol_mode
    :type cl:integer
    :initform 0)
   (idle_mode
    :reader idle_mode
    :initarg :idle_mode
    :type cl:integer
    :initform 0)
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector object_recognition_msgs-msg:RecognizedObject)
   :initform (cl:make-array 0 :element-type 'object_recognition_msgs-msg:RecognizedObject :initial-element (cl:make-instance 'object_recognition_msgs-msg:RecognizedObject)))
   (call_stack
    :reader call_stack
    :initarg :call_stack
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (data_stack
    :reader data_stack
    :initarg :data_stack
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (words
    :reader words
    :initarg :words
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (state_string
    :reader state_string
    :initarg :state_string
    :type cl:string
    :initform ""))
)

(cl:defclass EinState (<EinState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EinState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EinState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ein-msg:<EinState> is deprecated: use ein-msg:EinState instead.")))

(cl:ensure-generic-function 'zero_g-val :lambda-list '(m))
(cl:defmethod zero_g-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:zero_g-val is deprecated.  Use ein-msg:zero_g instead.")
  (zero_g m))

(cl:ensure-generic-function 'movement_state-val :lambda-list '(m))
(cl:defmethod movement_state-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:movement_state-val is deprecated.  Use ein-msg:movement_state instead.")
  (movement_state m))

(cl:ensure-generic-function 'patrol_state-val :lambda-list '(m))
(cl:defmethod patrol_state-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:patrol_state-val is deprecated.  Use ein-msg:patrol_state instead.")
  (patrol_state m))

(cl:ensure-generic-function 'place_mode-val :lambda-list '(m))
(cl:defmethod place_mode-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:place_mode-val is deprecated.  Use ein-msg:place_mode instead.")
  (place_mode m))

(cl:ensure-generic-function 'patrol_mode-val :lambda-list '(m))
(cl:defmethod patrol_mode-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:patrol_mode-val is deprecated.  Use ein-msg:patrol_mode instead.")
  (patrol_mode m))

(cl:ensure-generic-function 'idle_mode-val :lambda-list '(m))
(cl:defmethod idle_mode-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:idle_mode-val is deprecated.  Use ein-msg:idle_mode instead.")
  (idle_mode m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:objects-val is deprecated.  Use ein-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'call_stack-val :lambda-list '(m))
(cl:defmethod call_stack-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:call_stack-val is deprecated.  Use ein-msg:call_stack instead.")
  (call_stack m))

(cl:ensure-generic-function 'data_stack-val :lambda-list '(m))
(cl:defmethod data_stack-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:data_stack-val is deprecated.  Use ein-msg:data_stack instead.")
  (data_stack m))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:words-val is deprecated.  Use ein-msg:words instead.")
  (words m))

(cl:ensure-generic-function 'state_string-val :lambda-list '(m))
(cl:defmethod state_string-val ((m <EinState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ein-msg:state_string-val is deprecated.  Use ein-msg:state_string instead.")
  (state_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EinState>) ostream)
  "Serializes a message object of type '<EinState>"
  (cl:let* ((signed (cl:slot-value msg 'zero_g)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'movement_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'patrol_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'patrol_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'idle_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'call_stack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'call_stack))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data_stack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'data_stack))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'words))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EinState>) istream)
  "Deserializes a message object of type '<EinState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zero_g) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'movement_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'patrol_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'patrol_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idle_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_recognition_msgs-msg:RecognizedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'call_stack) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'call_stack)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data_stack) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data_stack)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'words) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'words)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EinState>)))
  "Returns string type for a message object of type '<EinState>"
  "ein/EinState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EinState)))
  "Returns string type for a message object of type 'EinState"
  "ein/EinState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EinState>)))
  "Returns md5sum for a message object of type '<EinState>"
  "b800e8474fded9c133c7277e1ccfe9b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EinState)))
  "Returns md5sum for a message object of type 'EinState"
  "b800e8474fded9c133c7277e1ccfe9b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EinState>)))
  "Returns full string definition for message of type '<EinState>"
  (cl:format cl:nil "# the entire relevant state of the ein system
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EinState)))
  "Returns full string definition for message of type 'EinState"
  (cl:format cl:nil "# the entire relevant state of the ein system
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EinState>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'call_stack) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data_stack) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'words) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'state_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EinState>))
  "Converts a ROS message object to a list"
  (cl:list 'EinState
    (cl:cons ':zero_g (zero_g msg))
    (cl:cons ':movement_state (movement_state msg))
    (cl:cons ':patrol_state (patrol_state msg))
    (cl:cons ':place_mode (place_mode msg))
    (cl:cons ':patrol_mode (patrol_mode msg))
    (cl:cons ':idle_mode (idle_mode msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':call_stack (call_stack msg))
    (cl:cons ':data_stack (data_stack msg))
    (cl:cons ':words (words msg))
    (cl:cons ':state_string (state_string msg))
))