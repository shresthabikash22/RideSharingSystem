#include "PremiumRide.h"

PremiumRide::PremiumRide(int id, std::string pickUp, std::string dropOff, double dist) 
    : Ride(id, pickUp, dropOff, dist) {}

double PremiumRide::fare() {
    fareAmount = distance * 2.5; 
    return fareAmount;
}
