#ifndef RIDE_H
#define RIDE_H

#include <string>

class Ride
{
protected:
    int rideId;
    std::string pickUpLocation;
    std::string dropOffLocation;
    double distance;                    
    double fareAmount;

    void setFare(double f) { fareAmount = f; }
    

public:
    Ride(int id, std::string pickUp, std::string dropOff, double dist) 
        : rideId(id), pickUpLocation(pickUp), dropOffLocation(dropOff), distance(dist), fareAmount(0.0) {};       
    virtual ~Ride() = default;
    virtual double fare() = 0;
    virtual void rideDetails() const;
    virtual std::string rideType() const {return "Base Ride";}
};


#endif // RIDE_H
