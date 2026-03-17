#include "Ride.h"
#include <iostream>

        

    void Ride::rideDetails() const {
        std::cout << "\tRide ID: " << rideId << std::endl;
        std::cout << "\tPick-Up Location: " << pickUpLocation << std::endl;
        std::cout << "\tDrop-Off Location: " << dropOffLocation << std::endl;
        std::cout << "\tDistance: " << distance << " km" << std::endl;
        std::cout << "\tFare: $" << fareAmount << std::endl<<std::endl;
    }



