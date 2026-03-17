#ifndef PREMIUM_RIDE_H
#define PREMIUM_RIDE_H

#include "Ride.h"

class PremiumRide : public Ride
{
        static constexpr double BASE_FARE     = 5.00;
        static constexpr double RATE_PER_MILE = 2.75;
    public:
        PremiumRide(int id, std::string pickUp, std::string dropOff, double dist);
        virtual ~PremiumRide() = default;
        virtual double fare() override;
        virtual std::string rideType() const override { return "Premium Ride"; }
};


#endif