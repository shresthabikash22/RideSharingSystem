#ifndef PREMIUM_RIDE_H
#define PREMIUM_RIDE_H

#include "Ride.h"

class PremiumRide : public Ride
{
    public:
        PremiumRide(int id, std::string pickUp, std::string dropOff, double dist);
        virtual ~PremiumRide() = default;
        virtual double fare() override;
        virtual std::string rideType() const override { return "Premium Ride"; }
};


#endif