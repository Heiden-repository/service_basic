; Auto-generated. Do not edit!


(cl:in-package service_basic-srv)


;//! \htmlinclude service1-request.msg.html

(cl:defclass <service1-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass service1-request (<service1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_basic-srv:<service1-request> is deprecated: use service_basic-srv:service1-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_basic-srv:a-val is deprecated.  Use service_basic-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_basic-srv:b-val is deprecated.  Use service_basic-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service1-request>) ostream)
  "Serializes a message object of type '<service1-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service1-request>) istream)
  "Deserializes a message object of type '<service1-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service1-request>)))
  "Returns string type for a service object of type '<service1-request>"
  "service_basic/service1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1-request)))
  "Returns string type for a service object of type 'service1-request"
  "service_basic/service1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service1-request>)))
  "Returns md5sum for a message object of type '<service1-request>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service1-request)))
  "Returns md5sum for a message object of type 'service1-request"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service1-request>)))
  "Returns full string definition for message of type '<service1-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service1-request)))
  "Returns full string definition for message of type 'service1-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service1-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service1-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude service1-response.msg.html

(cl:defclass <service1-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass service1-response (<service1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_basic-srv:<service1-response> is deprecated: use service_basic-srv:service1-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_basic-srv:result-val is deprecated.  Use service_basic-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service1-response>) ostream)
  "Serializes a message object of type '<service1-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service1-response>) istream)
  "Deserializes a message object of type '<service1-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service1-response>)))
  "Returns string type for a service object of type '<service1-response>"
  "service_basic/service1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1-response)))
  "Returns string type for a service object of type 'service1-response"
  "service_basic/service1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service1-response>)))
  "Returns md5sum for a message object of type '<service1-response>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service1-response)))
  "Returns md5sum for a message object of type 'service1-response"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service1-response>)))
  "Returns full string definition for message of type '<service1-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service1-response)))
  "Returns full string definition for message of type 'service1-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service1-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service1-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service1)))
  'service1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service1)))
  'service1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1)))
  "Returns string type for a service object of type '<service1>"
  "service_basic/service1")