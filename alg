#include <murAPI.hpp>
int main()
{
    float k = 1.5, v = -30, u;
     int curs = 1;
     mur.addDetectorToList(Object::RECTANGLE, 0);
     bool isLineDetected = false;
while (true){
    auto yaw = mur.getYaw(); 
    u = k*(yaw-curs);
    mur.setPortA(v+u);
    mur.setPortB(v-u);
     
    if(!isLineDetected)
     for(auto obj : mur.getDetectedObjectsList(0)) {
     if(obj.type == Object::RECTANGLE){
       curs +=obj.angle;
       isLineDetected = true;
     }
    }
   }         
        return 0;
}
