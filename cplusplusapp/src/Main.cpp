#include <iostream>
#include <vector>
#include <memory>

#include "Driver.h"
#include "Ride.h"
#include "StandardRide.h"
#include "PremiumRide.h"
#include "Rider.h"

using namespace std;

int main() {

    // Create drivers
    auto driver1 = make_shared<Driver>(1, "James", 4.8);
    auto driver2 = make_shared<Driver>(2, "Oliver", 4.5);

    // Create riders
    auto rider1 = make_shared<Rider>(1, "Charlie");
    auto rider2 = make_shared<Rider>(2, "Diana");   

    // Create rides
   
    std::vector<std::shared_ptr<Ride>> rides;
    rides.push_back(make_shared<StandardRide>(101, "Irving", "Fort Worth", 10.0));
    rides.push_back(make_shared<PremiumRide>(102, "Allen", "Longview", 15.0));
    rides.push_back(make_shared<StandardRide>(103, "FlowerMound", "Euless", 5.0));
    rides.push_back(make_shared<PremiumRide>(104, "Dallas", "Greenville", 20.0));
    rides.push_back(make_shared<StandardRide>(105, "Plano", "Frisco", 8.0));

    //rieders request rides
    std::cout<< " \n|*******Ride request information: ********|" << std::endl;
    rider1->requestRide(rides[0]);
    rider1->requestRide(rides[1]);
    rider2->requestRide(rides[2]);      
    rider2->requestRide(rides[3]);
    rider2->requestRide(rides[4]);

    //assign rides to drivers
    std::cout<< " \n|*******Ride assignment information: ********|" << std::endl;
    driver1->addRide(rides[0]);
    driver1->addRide(rides[1]);
    driver2->addRide(rides[2]);
    driver2->addRide(rides[3]); 
    driver1->addRide(rides[4]);

    std::cout<< " \n|*******List of rides: ********|" << std::endl;
    for (const auto& ride : rides) {
        std::cout << "Ride Type: " << ride->rideType() << std::endl;
        std::cout << "Fare: $" << ride->fare() << std::endl;
        ride->rideDetails();
        std::cout << std::endl;
    }

    std::cout<< " \n|*******Driver Information: ********|" << std::endl;
    driver1->getDriverInfo();
    std::cout << std::endl;
    driver2->getDriverInfo();     
    
    std::cout<< " \n|*******Rider Information: ********|" << std::endl;
    rider1->viewRides();
    std::cout << std::endl;
    rider2->viewRides();    

    
    return 0;
}