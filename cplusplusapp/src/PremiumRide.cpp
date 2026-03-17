#include "PremiumRide.h"

PremiumRide::PremiumRide(int id, std::string pickUp, std::string dropOff, double dist) 
    : Ride(id, pickUp, dropOff, dist) {}

double PremiumRide::fare() {
    fareAmount = BASE_FARE + (RATE_PER_MILE * distance);
    setFare(fareAmount); 
    return fareAmount;
}
