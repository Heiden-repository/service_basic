#include "ros/ros.h"
#include "service_basic/service1.h"
#include <cstdlib>

int main(int argc, char **argv)
{
    ros::init(argc,argv,"client");
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<service_basic::service1>("service");

    service_basic::service1 srv;
    srv.request.a = atoll(argv[1]);
    srv.request.b = atoll(argv[2]);
    client.call(srv);
    ROS_INFO("Sum : %ld",(long int)srv.response.result);
}