Object subclass: #Rider
    instanceVariableNames: 'riderID name requestedRides'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'RideSharingSystem'!

!Rider class methodsFor: 'instance creation'!
id: anID name: aName
    | r |
    r := self new.
    r initID: anID name: aName.
    ^ r
! !

!Rider methodsFor: 'initialization'!
initID: anID name: aName
    riderID        := anID.
    name           := aName.
    requestedRides := OrderedCollection new.
! !

!Rider methodsFor: 'accessing'!
riderID
    ^ riderID
!
name
    ^ name
! !

!Rider methodsFor: 'operations'!
requestRide: aRide
    requestedRides add: aRide.
    Transcript
        show: '  [Rider ', name, '] Ride #',
              aRide rideID printString, ' requested.'; nl.
!

totalString
    | total dollars cents |
    total   := requestedRides inject: 0.0 into: [:sum :r | sum + r fare].
    dollars := total truncated.
    cents   := ((total - dollars) * 100) truncated abs.
    ^ dollars printString, '.',
      (cents < 10 ifTrue: ['0'] ifFalse: ['']),
      cents printString
!

viewRides
    Transcript
        show: '  Rider: ', name,
              ' (ID #', riderID printString, ')'; nl.
    requestedRides isEmpty
        ifTrue: [ Transcript show: '  No rides yet.'; nl. ^ self ].
    requestedRides do: [:r |
        Transcript nl.
        r rideDetails.
    ].
    Transcript
        show: '  Total Spent: $', self totalString; nl.
! !