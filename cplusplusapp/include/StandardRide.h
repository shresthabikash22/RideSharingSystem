
#ifndef STANDARD_RIDE_H
#define STANDARD_RIDE_H

#include "Ride.h"

class StandardRide : public Ride
{
        static constexpr double BASE_FARE     = 2.50;
        static constexpr double RATE_PER_MILE = 1.20;
    public:
        StandardRide(int id, std::string pickUp, std::string dropOff, double dist);
        virtual ~StandardRide() = default;
        double fare() override;
        virtual std::string rideType() const override { return "Standard Ride"; }
};

#endif 