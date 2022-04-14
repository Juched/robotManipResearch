;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::JoystickJointsFeedback)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'JoystickJointsFeedback (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::JOYSTICKJOINTSFEEDBACK")
  (make-package "NIRYO_ONE_MSGS::JOYSTICKJOINTSFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude JoystickJointsFeedback.msg.html


(defclass niryo_one_msgs::JoystickJointsFeedback
  :super ros::object
  :slots (_is_in_joints_limit ))

(defmethod niryo_one_msgs::JoystickJointsFeedback
  (:init
   (&key
    ((:is_in_joints_limit __is_in_joints_limit) nil)
    )
   (send-super :init)
   (setq _is_in_joints_limit __is_in_joints_limit)
   self)
  (:is_in_joints_limit
   (&optional (__is_in_joints_limit :null))
   (if (not (eq __is_in_joints_limit :null)) (setq _is_in_joints_limit __is_in_joints_limit)) _is_in_joints_limit)
  (:serialization-length
   ()
   (+
    ;; bool _is_in_joints_limit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_in_joints_limit
       (if _is_in_joints_limit (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_in_joints_limit
     (setq _is_in_joints_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_one_msgs::JoystickJointsFeedback :md5sum-) "ef8713044a4f11ece629bb8e0a3e2058")
(setf (get niryo_one_msgs::JoystickJointsFeedback :datatype-) "niryo_one_msgs/JoystickJointsFeedback")
(setf (get niryo_one_msgs::JoystickJointsFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# feedback 
bool is_in_joints_limit


")



(provide :niryo_one_msgs/JoystickJointsFeedback "ef8713044a4f11ece629bb8e0a3e2058")

