Object subclass: #Driver
    instanceVariableNames: 'driverID name rating assignedRides'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'RideSharingSystem'!

!Driver class methodsFor: 'instance creation'!
id: anID name: aName rating: aRating
    | d |
    d := self new.
    d initID: anID name: aName rating: aRating.
    ^ d
! !

!Driver methodsFor: 'initialization'!
initID: anID name: aName rating: aRating
    driverID      := anID.
    name          := aName.
    rating        := aRating.
    assignedRides := OrderedCollection new.
! !

!Driver methodsFor: 'accessing'!
driverID
    ^ driverID
!
name
    ^ name
!
rating
    ^ rating
! !

!Driver methodsFor: 'operations'!
addRide: aRide
    assignedRides add: aRide.
!

totalEarnings
    ^ assignedRides inject: 0.0 into: [:sum :r | sum + r fare]
!

floatToString: aFloat
    | dollars cents |
    dollars := aFloat truncated.
    cents   := ((aFloat - dollars) * 100) truncated abs.
    ^ dollars printString, '.',
      (cents < 10 ifTrue: ['0'] ifFalse: ['']),
      cents printString
!

getDriverInfo
    Transcript
        show: '  Driver ID   : ', driverID printString; nl;
        show: '  Name        : ', name; nl;
        show: '  Rating      : ', (self floatToString: rating asFloat), ' / 5.0'; nl;
        show: '  Total Rides : ', assignedRides size printString; nl;
        show: '  Total Earned: $', (self floatToString: self totalEarnings); nl.
! !