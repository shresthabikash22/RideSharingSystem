Ride subclass: #StandardRide
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'RideSharingSystem'!

!StandardRide methodsFor: 'accessing'!
rideType
    ^ 'Standard'
! !

!StandardRide methodsFor: 'operations'!
calculateFare
    fare := (2.50 + (1.20 * distance)) asFloat.
    ^ fare
! !