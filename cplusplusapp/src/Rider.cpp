#include "Rider.h"
#include <iostream>

Rider::Rider(int id, const std::string& name) : riderID(id), name(name) {}

void Rider::requestRide(std::shared_ptr<Ride> ride) {
    requestedRides.push_back(ride);
    std::cout<< "Rider " << name << " requested a ride from " << ride->rideType() << std::endl;
}

void Rider::viewRides() const {
    std::cout<< "Rider: " << name << std::endl;
    if (requestedRides.empty()) {
        std::cout << "\tNo rides requested." << std::endl;
        return;
    }
    for (const auto& ride : requestedRides) {
        ride->rideDetails();
    }
}

const std::vector<std::shared_ptr<Ride>>& Rider::getRides() const {
    return requestedRides;
}