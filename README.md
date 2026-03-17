# RideSharingSystem Using C++ and Smalltalk

A class-based Ride Sharing System implemented in **C++** and **Smalltalk**, demonstrating three core OOP principles: **encapsulation**, **inheritance**, and **polymorphism**.

## Repository Structure
 
```
/
├── c plusplus/                  # C++ implementation
│   ├── include/
│   ├── src/
│   └── Makefile
├── smalltalk/            # Smalltalk implementation 
└── README.md
```

## OOP Principles Overview
 
Both implementations demonstrate the same three principles:
 
| Principle | How it's applied |
|---|---|
| **Encapsulation** | `Driver` and `Rider` keep their ride lists private, exposed only through defined methods |
| **Inheritance** | `StandardRide` and `PremiumRide`  extend a common `Ride` base class |
| **Polymorphism** | All ride types are stored in one collection; `fare()` and `rideDetails()` dispatch to the correct subclass at runtime |


### Class Hierarchy (same in both languages)
 
```
Ride  (abstract base)
├── StandardRide   $2.50 base + $1.20/mi
├── PremiumRide    $5.00 base + $2.75/mi  
 
Driver             private assignedRides list
Rider              private requestedRides list
```
 
---
 
## C++
 
### Structure
 
```
c++/
├── include/
│   ├── Ride.h                 # Abstract base class
│   ├── StandardRide.h
│   ├── PremiumRide.h
│   ├── Driver.h
│   └── Rider.h
├── src/
│   ├── Ride.cpp
│   ├── StandardRide.cpp
│   ├── PremiumRide.cpp
│   ├── Driver.cpp
│   ├── Rider.cpp
│   └── main.cpp
└── Makefile
```

### How to Compile and Run
 
**Requirements:** GCC 7+ / Clang 5+, C++17, and `make`.
 
```bash
cd c++
 
# Build
make
 
# Run
make run
 
# Clean build artifacts
make clean
```

### Sample Output
```
  |*******Ride request information: ********|
Rider Charlie requested a ride from Standard Ride
Rider Charlie requested a ride from Premium Ride
Rider Diana requested a ride from Standard Ride
Rider Diana requested a ride from Premium Ride
Rider Diana requested a ride from Standard Ride
 
|*******Ride assignment information: ********|
Driver James assigned a ride from Standard Ride
Driver James assigned a ride from Premium Ride
Driver Oliver assigned a ride from Standard Ride
Driver Oliver assigned a ride from Premium Ride
Driver James assigned a ride from Standard Ride
 
|*******List of rides: ********|
Ride Type: Standard Ride
Fare: $14.5
        Ride ID: 101
        Pick-Up Location: Irving
        Drop-Off Location: Fort Worth
        Distance: 10 km
        Fare: $14.5


Ride Type: Premium Ride
Fare: $46.25
        Ride ID: 102
        Pick-Up Location: Allen
        Drop-Off Location: Longview
        Distance: 15 km
        Fare: $46.25


Ride Type: Standard Ride
Fare: $8.5
        Ride ID: 103
        Pick-Up Location: FlowerMound
        Drop-Off Location: Euless
        Distance: 5 km
        Fare: $8.5


Ride Type: Premium Ride
Fare: $60
        Ride ID: 104
        Pick-Up Location: Dallas
        Drop-Off Location: Greenville
        Distance: 20 km
        Fare: $60


Ride Type: Standard Ride
Fare: $12.1
        Ride ID: 105
        Pick-Up Location: Plano
        Drop-Off Location: Frisco
        Distance: 8 km
        Fare: $12.1


 
|*******Driver Information: ********|
Driver ID: 1
Name: James
Rating: 4.8
        Ride ID: 101
        Pick-Up Location: Irving
        Drop-Off Location: Forth Worth
        Distance: 10 km
        Fare: $14.5

        Ride ID: 102
        Pick-Up Location: Allen
        Drop-Off Location: Longview
        Distance: 15 km
        Fare: $46.25

        Ride ID: 105
        Pick-Up Location: Plano
        Drop-Off Location: Frisco
        Distance: 8 km
        Fare: $12.1


Driver ID: 2
Name: Oliver
Rating: 4.5
        Ride ID: 103
        Pick-Up Location: FlowerMound
        Drop-Off Location: Euless
        Distance: 5 km
        Fare: $8.5

        Ride ID: 104
        Pick-Up Location: Dallas
        Drop-Off Location: Greenville
        Distance: 20 km
        Fare: $60

 
|*******Rider Information: ********|
Rider: Charlie
        Ride ID: 101
        Pick-Up Location: Irving
        Drop-Off Location: Fort Worth
        Distance: 10 km
        Fare: $14.5

        Ride ID: 102
        Pick-Up Location: Allen
        Drop-Off Location: Longview
        Distance: 15 km
        Fare: $46.25


Rider: Diana
        Ride ID: 103
        Pick-Up Location: FlowerMound
        Drop-Off Location: Euless
        Distance: 5 km
        Fare: $8.5

        Ride ID: 104
        Pick-Up Location: Dallas
        Drop-Off Location: Greenville
        Distance: 20 km
        Fare: $60

        Ride ID: 105
        Pick-Up Location: Plano
        Drop-Off Location: Frisco
        Distance: 8 km
        Fare: $12.1

```
## Smalltalk
