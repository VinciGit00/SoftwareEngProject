/*
* This code has been generated by the Rebel: a code generator for modern Java.
*
* Drop us a line or two at feedback@archetypesoftware.com: we would love to hear from you!
*/
package Model1;

import java.util.*;
import java.time.*;



// ----------- << imports@AAAAAAF+jjNW9eJimvU= >>
// ----------- >>

// ----------- << class.annotations@AAAAAAF+jjNW9eJimvU= >>
// ----------- >>
public class ListBookings {
    // ----------- << attribute.annotations@AAAAAAF+jjSZoOQ8X6w= >>
    // ----------- >>
    private Set<booking> bookings = new HashSet<>();

    // ----------- << attribute.annotations@AAAAAAF+jjTO3uUP+p0= >>
    // ----------- >>
    private FirebaseDatabase db;

    public Set<booking> getBookings() {
        return bookings;
    }

    public FirebaseDatabase getDb() {
        return db;
    }

    public void setDb(FirebaseDatabase db) {
        this.db = db;
    }

    // ----------- << method.annotations@AAAAAAF+sobaNU7FFUc= >>
    // ----------- >>
    public void ReadBookings() {
    // ----------- << method.body@AAAAAAF+sobaNU7FFUc= >>
    // ----------- >>
    }
// ----------- << class.extras@AAAAAAF+jjNW9eJimvU= >>
// ----------- >>
}