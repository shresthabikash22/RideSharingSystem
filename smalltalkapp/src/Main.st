
FileStream fileIn: '/app/src/Ride.st'.
FileStream fileIn: '/app/src/StandardRide.st'.
FileStream fileIn: '/app/src/PremiumRide.st'.
FileStream fileIn: '/app/src/Driver.st'.
FileStream fileIn: '/app/src/Rider.st'.

Eval [
    
    | driver1 driver2 rider1 rider2 allRides r1 r2 r3 r4 grand dollars cents |

       
    "|***********  Create Drivers ************|"
    driver1 := Driver id: 1 name: 'Alice Martinez' rating: 4.9.
    driver2 := Driver id: 2 name: 'Bob Chen'       rating: 4.7.

    "|*********** Create Riders ************|"
    rider1 := Rider id: 101 name: 'Carol White'.
    rider2 := Rider id: 102 name: 'David Kim'.

    "|*********** Create rides and compute fares ************|"
    allRides := OrderedCollection new.

    r1 := StandardRide newID: 101 from: 'Downtown'    to: 'Airport'        distance: 12.5.
    r1 calculateFare.
    r2 := PremiumRide  newID: 102 from: 'Allen' to: 'Longview' distance: 15.
    r2 calculateFare.
    r3 := StandardRide newID: 103 from: 'Flowermound'        to: 'Euless'     distance: 4.5.
    r3 calculateFare.
    r4 := PremiumRide  newID: 1003 from: 'DFW Airport'     to: 'Hotel Grand'    distance: 5.0.
    r4 calculateFare.

    allRides add: r1.
    allRides add: r2.
    allRides add: r3.
    allRides add: r4.

    "|***********  Riders request rides ************|"
    Transcript show: '|*********** Ride Requests ************|'; nl; nl.
    rider1 requestRide: r1.
    rider1 requestRide: r2.
    rider2 requestRide: r3.
    rider2 requestRide: r4.

    "|*********** Assign rides to drivers ************|"
    driver1 addRide: r1.
    driver1 addRide: r3.
    driver2 addRide: r2.
    driver2 addRide: r4.

    Transcript show: ''; nl; show: '|*********** Rides List************|'; nl; nl.
    allRides do: [:r |
        r rideDetails. 
        Transcript nl.
    ].
    Transcript nl.

    Transcript show: ''; nl; show: '|*********** Fare Summary ************|'; nl; nl.
    grand := 0.0.
    allRides do: [:r |
        | f |
        f := r fare.
        grand := grand + f.
        Transcript
            show: '  Ride #', r rideID printString,
                  '  [', r rideType, ']',
                  '  Fare: $', r fareString; nl.
    ].
    dollars := grand truncated.
    cents   := ((grand - dollars) * 100) truncated abs.
    Transcript
        show: '  Grand Total: $', dollars printString, '.',
              (cents < 10 ifTrue: ['0'] ifFalse: ['']),
              cents printString; nl.    
    
    Transcript show: ''; nl; show: '|*********** Rider Histories ************|'; nl; nl.
    rider1 viewRides.
    Transcript nl.
    rider2 viewRides.

 
    Transcript show: ''; nl; show: '|***********Driver Summaries ************|'; nl; nl.
    driver1 getDriverInfo.
    Transcript nl.
    driver2 getDriverInfo.

]