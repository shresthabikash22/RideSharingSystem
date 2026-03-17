#ifndef RIDER_H
#define RIDER_H
#include <string>  
#include <vector>     
#include <memory>
#include "Ride.h"
class Rider{
private:
    int riderID;
    std::string name;
    std::vector<std::shared_ptr<Ride>> requestedRides;
public:
    Rider(int id, const std::string& name);
 
    void requestRide(std::shared_ptr<Ride> ride);
    void viewRides() const;
 
    // Read-only access
    const std::vector<std::shared_ptr<Ride>>& getRides() const;
 
    int         getRiderID() const { return riderID; }
    std::string getName()    const { return name;    }
};


#endif