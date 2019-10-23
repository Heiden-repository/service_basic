#include "ros/ros.h"
#include "service_basic/service1.h"

bool calculation(service_basic::service1::Request &req,
    service_basic::service1::Response &res)
{
    res.result = req.a +req.b;

    ROS_INFO("request: x=%ld,y=%ld",(long int)req.a,(long int)req.b);
    ROS_INFO("sending back response: %ld",(long int)res.result);

    return true;
}

int main(int argc, char **argv)
{
ros::init(argc,argv,"server");
ros::NodeHandle n;

ros::ServiceServer server = n.advertiseService("service",calculation);

ROS_INFO("ready srv server!");

ros::spin();

return 0;
}