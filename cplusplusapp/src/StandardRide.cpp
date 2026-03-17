#include "StandardRide.h"

StandardRide::StandardRide(int id, std::string pickUp, std::string dropOff, double dist) 
    : Ride(id, pickUp, dropOff, dist) {}    

double StandardRide::fare() {
    fareAmount = distance * 1.5; 
    return fareAmount;
}
