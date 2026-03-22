Ride subclass: #PremiumRide
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'RideSharingSystem'!

!PremiumRide methodsFor: 'accessing'!
rideType
    ^ 'Premium'
! !

!PremiumRide methodsFor: 'operations'!
calculateFare
    fare := (5.00 + (2.75 * distance)) asFloat.
    ^ fare
! !
