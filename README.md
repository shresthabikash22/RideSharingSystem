# RideSharingSystem Using C++ and Smalltalk

A class-based Ride Sharing System implemented in **C++** and **Smalltalk**, demonstrating three core OOP principles: **encapsulation**, **inheritance**, and **polymorphism**.

## Repository Structure
 
```
/
├── c plusplus/           # C++ implementation
│   ├── include/
│   ├── src/
│   └── Makefile
├── smalltalk/            # Smalltalk implementation
│   ├── src/
│   └── Dockerfile
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
│   ├── Ride.h                
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
cd cplusplusapp
 
# Build
make
 
# Run
make run
 
# Clean build artifacts
make clean
```
**Compile manually (without make):**
```bash
g++ -std=c++17 -Wall -Iinclude \
    src/Ride.cpp src/StandardRide.cpp src/PremiumRide.cpp \
    src/Driver.cpp src/Rider.cpp src/main.cpp \
    -o bin/app
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

### Structure
 
```
smalltalkapp/
├── src/
│   ├── Ride.st              # Abstract base class
│   ├── StandardRide.st
│   ├── PremiumRide.st
│   ├── Driver.st
│   ├── Rider.st
│   └── Main.st              # Entry point
├── Dockerfile               # For running via Docker
```
 
### How to Run
 
> **Note:** GNU Smalltalk (`gst`) was removed from Ubuntu's official repositories after Ubuntu 22.04. Depending on your OS, choose the option that fits your setup below.
 
---
 
#### Option 1 — Docker (works on all platforms: Linux, macOS, Windows)
 
This is the recommended approach if you are on **Ubuntu 22.04+**, **macOS**, or **Windows**.
 
**Prerequisites:** Install Docker
- Linux: `sudo apt-get install docker.io`
- macOS/Windows: Download [Docker Desktop](https://www.docker.com/products/docker-desktop)
 
**Step 1 — Build the image (only once):**
```bash
cd smalltalkapp
sudo docker build -t gst-image .
```
 
> On macOS and Windows you can drop `sudo`.
 
**Step 2 — Run the program:**
```bash
sudo docker run --rm -v "$(pwd):/app" gst-image gst -q /app/src/Main.st
```
 
> The `-q` flag suppresses internal GST log messages for clean output.
 
**To avoid typing `sudo` every time (Linux only):**
```bash
sudo usermod -aG docker $USER
# Log out and back in, then run without sudo:
docker run --rm -v "$(pwd):/app" gst-image gst -q /app/src/Main.st
```
 
---
 
#### Option 2 — GNU Smalltalk directly (Ubuntu 20.04 or earlier / Debian)
 
If you are on an older Ubuntu or Debian where `gst` is still available:
 
```bash
sudo apt-get install gnu-smalltalk
cd smalltalkapp
gst -q src/Main.st
```
 
---
 
#### Option 3 — GNU Smalltalk via Homebrew (macOS)
 
```bash
brew install gnu-smalltalk
cd smalltalkapp
gst -q src/Main.st
```
 
---
 
#### Option 4 — Windows (WSL)
 
If you are on Windows, the easiest path is to use WSL (Windows Subsystem for Linux) with Ubuntu 20.04, then follow Option 2:
 
```bash
# Inside WSL terminal
sudo apt-get install gnu-smalltalk
cd smalltalkapp
gst -q src/Main.st
```
 
Alternatively, install Docker Desktop for Windows and follow Option 1.
 
---
 
### Key Design Notes
 
- GNU Smalltalk uses **bang (`!`) syntax** for method definitions, which differs from Pharo/Squeak bracket syntax
- All instance variables in Smalltalk are private by default — accessors must be explicitly defined (encapsulation built into the language)
- `Main.st` uses `FileStream fileIn:` to load each class file in the correct order before running the demo inside an `Eval [ ]` block
- Polymorphism works through Smalltalk's dynamic message dispatch — sending `calculateFare` or `rideDetails` to any element in the `OrderedCollection` automatically calls the correct subclass method at runtime
 
### Sample Output
 
```
|*********** Ride Requests ************|

  [Rider Carol White] Ride #101 requested.
  [Rider Carol White] Ride #102 requested.
  [Rider David Kim] Ride #103 requested.
  [Rider David Kim] Ride #1003 requested.

|*********** Rides List************|

  Ride ID       : 101
  Type          : Standard
  Pickup        : Downtown
  Drop-off      : Airport
  Distance      : 12.50 mi
  Fare          : $17.50

  Ride ID       : 102
  Type          : Premium
  Pickup        : Allen
  Drop-off      : Longview
  Distance      : 15.00 mi
  Fare          : $46.25

  Ride ID       : 103
  Type          : Standard
  Pickup        : Flowermound
  Drop-off      : Euless
  Distance      : 4.50 mi
  Fare          : $7.89

  Ride ID       : 1003
  Type          : Premium
  Pickup        : DFW Airport
  Drop-off      : Hotel Grand
  Distance      : 5.00 mi
  Fare          : $18.75



|*********** Fare Summary ************|

  Ride #101  [Standard]  Fare: $17.50
  Ride #102  [Premium]  Fare: $46.25
  Ride #103  [Standard]  Fare: $7.89
  Ride #1003  [Premium]  Fare: $18.75
  Grand Total: $90.40

|*********** Rider Histories ************|

  Rider: Carol White (ID #101)

  Ride ID       : 101
  Type          : Standard
  Pickup        : Downtown
  Drop-off      : Airport
  Distance      : 12.50 mi
  Fare          : $17.50

  Ride ID       : 102
  Type          : Premium
  Pickup        : Allen
  Drop-off      : Longview
  Distance      : 15.00 mi
  Fare          : $46.25
  Total Spent: $63.75

  Rider: David Kim (ID #102)

  Ride ID       : 103
  Type          : Standard
  Pickup        : Flowermound
  Drop-off      : Euless
  Distance      : 4.50 mi
  Fare          : $7.89

  Ride ID       : 1003
  Type          : Premium
  Pickup        : DFW Airport
  Drop-off      : Hotel Grand
  Distance      : 5.00 mi
  Fare          : $18.75
  Total Spent: $26.64

|***********Driver Summaries ************|

  Driver ID   : 1
  Name        : Alice Martinez
  Rating      : 4.90 / 5.0
  Total Rides : 2
  Total Earned: $25.39

  Driver ID   : 2
  Name        : Bob Chen
  Rating      : 4.70 / 5.0
  Total Rides : 2
  Total Earned: $65.00
===============================
```
 
---
