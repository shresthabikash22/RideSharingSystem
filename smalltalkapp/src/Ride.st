Object subclass: #Ride
    instanceVariableNames: 'rideID pickupLocation dropoffLocation distance fare'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'RideSharingSystem'!

!Ride class methodsFor: 'instance creation'!
newID: anID from: aPickup to: aDropoff distance: aDist
    | r |
    r := self new.
    r initID: anID from: aPickup to: aDropoff distance: aDist.
    ^ r
! !

!Ride methodsFor: 'initialization'!
initID: anID from: aPickup to: aDropoff distance: aDist
    rideID          := anID.
    pickupLocation  := aPickup.
    dropoffLocation := aDropoff.
    distance        := aDist asFloat.
    fare            := 0.0.
! !

!Ride methodsFor: 'accessing'!
rideID
    ^ rideID
!
pickupLocation
    ^ pickupLocation
!
dropoffLocation
    ^ dropoffLocation
!
distance
    ^ distance
!
fare
    ^ fare
!
fare: aValue
    fare := aValue asFloat
!
rideType
    ^ 'Base'
! !

!Ride methodsFor: 'operations'!
calculateFare
    ^ 0.0
!

floatToString: aFloat
    "Safely convert a float to string without using printString"
    | dollars cents |
    dollars := aFloat truncated.
    cents   := ((aFloat - dollars) * 100) truncated abs.
    ^ dollars printString, '.',
      (cents < 10 ifTrue: ['0'] ifFalse: ['']),
      cents printString
!

fareString
    ^ self floatToString: fare
!

rideDetails
    Transcript
        show: '  Ride ID       : ', rideID printString; nl;
        show: '  Type          : ', self rideType; nl;
        show: '  Pickup        : ', pickupLocation; nl;
        show: '  Drop-off      : ', dropoffLocation; nl;
        show: '  Distance      : ', (self floatToString: distance), ' mi'; nl;
        show: '  Fare          : $', self fareString; nl.
! !