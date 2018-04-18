package com.tekdays

class TekEvent {

    String city
    String name
    TekUser organizer
    String venue
    Date startDate
    Date endDate
    String description

    static hasMany = [ volunteers : TekUser ]

    static constraints = {
        name()
        city()
        description maxSize: 500
        organizer()
        venue()
        startDate()
        endDate()
    }

    String toString(){
        "$name, $city"
    }
}
