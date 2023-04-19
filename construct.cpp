#include<iostream>
#include<string>
#include<unistd.h>


class User
{
   std::string status = "Tired";

   public :
        std::string first_name;
        std::string last_name;
        std::string get_status()
        {
            return status;
        }

   

};

int main()
{
    User me;
    me.first_name = "Eduardo";
    me.last_name = "Beltran";
    usleep(200);
    std::cout<<"Status: "<<me.get_status()<<std::endl;
    return 0;
}