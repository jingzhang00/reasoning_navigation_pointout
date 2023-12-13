#include <ros/ros.h>
#include <iostream>
#include <string>
#include <sstream>
#include <iostream>
#include <fstream>
#include <rosprolog/rosprolog_client/PrologClient.h>
#include <world_percept_assig3/LoadKnowledge.h>


using namespace std;
class knowledge_node
{
private:
    PrologClient pl_;

    //Variable to save our preference to save or not the asserted queries
    bool fileName_Q_save;
    string fileName_Q;

    std::ifstream file;
    //here is the srv!!!!!!!!!
    ros::ServiceServer srv_load_knowledge_name_;
    std::string srv_load_knowledge_name_val;


public:
    knowledge_node(ros::NodeHandle &nh)
    {
        ROS_INFO_STREAM("Wait for the Prolog service...");
        if(pl_.waitForServer())
            pl_ = PrologClient("/rosprolog", true);
        srv_load_knowledge_name_val = "load_knowledge";
        srv_load_knowledge_name_ = nh.advertiseService(srv_load_knowledge_name_val, &knowledge_node::srv_load_knowledge_callback, this);
        fileName_Q_save=false;

    };
    ~knowledge_node(){

    };
    // Function to set the query file
    void setQueryFile(string fileName_Q)
    {
        file.open(fileName_Q);
        if (file.is_open())
        {
            fileName_Q_save=true; //This means that I want to save the queries in a file
            ROS_INFO_STREAM("File to save queries is open");
        }
        else
        {
            ROS_INFO_STREAM("“File not found and exit the function");
        }
        
    }
private:

    bool srv_load_knowledge_callback(world_percept_assig3::LoadKnowledge::Request &req,world_percept_assig3::LoadKnowledge::Response &res)
    {
        ROS_INFO_STREAM("load_knowledge service called");
        int start_value = req.start;
        res.confirm = false;
        if(start_value!=0)
        {
            loadQueries();
            res.confirm = true;
        }

        return res.confirm;
    }



    void loadQueries(){
        std::string query;
        while(getline(file, query)){
            ROS_INFO_STREAM("query: " << query);
            PrologQuery bdgs = pl_.query(query);
        }
        
    }
    
    

};



int main(int argc, char *argv[]) {

    ros::init(argc, argv, "knowledge_node");
    ros::NodeHandle nh;
    knowledge_node my_knowledge_node(nh);


    std::string saveFilePath = argv[1];
    bool saveQueries_flag=false; //variable that will receive the value from the yaml file

    std::cout << "test2" << std::endl;
   
   std::string savedQueryFile;
   nh.getParam("/read_prolog_queries/save_flag", saveQueries_flag);

   std::cout << saveQueries_flag << std::endl;
   if(saveQueries_flag)
    { 
        // std::cout << "test3" << std::endl;
        //This node now needs a path as input when we run it. This path is addedd to the obtain variable from the yaml file, as follows
        nh.getParam("/read_prolog_queries/saved_query_file", savedQueryFile);

        // std::cout << "test2" << std::endl;
        savedQueryFile= saveFilePath+savedQueryFile;

        std::cout << savedQueryFile << std::endl;

        ROS_INFO_STREAM("query_file: "<< savedQueryFile);

        //Now we call a new function which will create and open the new file
        my_knowledge_node.setQueryFile(savedQueryFile);
     
    }

    ros::spin();
    return 0;
}