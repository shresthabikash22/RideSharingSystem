
#ifndef DRIVER_H
#define DRIVER_H
#include <string>
#include <vector>
#include <memory>
#include "Ride.h"

// Driver class declaration
class Driver
{
private:
    int driverID;
    std::string name;
    double rating;
    std::vector<std::shared_ptr<Ride>> assignedRides;
public:
    Driver(int id, const std::string& name, double rating);
    void addRide(std::shared_ptr<Ride> ride);
    void getDriverInfo() const;
    
};

#endif // DRIVER_H