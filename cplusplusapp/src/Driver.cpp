#include <iostream>
#include "Driver.h"

Driver::Driver(int id, const std::string& name, double rating) 
    : driverID(id), name(name), rating(rating) {}

void Driver::getDriverInfo() const {
    std::cout << "Driver ID: " << driverID << std::endl;
    std::cout << "Name: " << name << std::endl;
    std::cout << "Rating: " << rating << std::endl;
    if (assignedRides.empty()) {
        std::cout << "\tNo rides assigned." << std::endl;
        return;
    }
    for (const auto& ride : assignedRides) {
        ride->rideDetails();
    }
}

void Driver::addRide(std::shared_ptr<Ride> ride) {
    assignedRides.push_back(ride);
    std::cout << "Driver " << name << " assigned a ride from " << ride->rideType() << std::endl;
}