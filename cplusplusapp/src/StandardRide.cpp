#include "StandardRide.h"

StandardRide::StandardRide(int id, std::string pickUp, std::string dropOff, double dist) 
    : Ride(id, pickUp, dropOff, dist) {}    

double StandardRide::fare() {
    fareAmount = BASE_FARE + (RATE_PER_MILE * distance); 
    setFare(fareAmount);
    return fareAmount;
}
