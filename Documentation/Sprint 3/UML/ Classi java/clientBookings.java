/*
* This code has been generated by the Rebel: a code generator for modern Java.
*
* Drop us a line or two at feedback@archetypesoftware.com: we would love to hear from you!
*/
package Model1;

import java.util.*;
import java.time.*;



// ----------- << imports@AAAAAAF+jh4VqdiAV1s= >>
// ----------- >>

// ----------- << class.annotations@AAAAAAF+jh4VqdiAV1s= >>
// ----------- >>
public class clientBookings extends ListBookings {
    // ----------- << attribute.annotations@AAAAAAF+ji2eQ9vgH3c= >>
    // ----------- >>
    private Set<booking> bookings = new HashSet<>();

    // ----------- << attribute.annotations@AAAAAAF+ji3FTdwpBVI= >>
    // ----------- >>
    private FirebaseDatabase db;

    // ----------- << attribute.annotations@AAAAAAF+ji9lmdz8A08= >>
    // ----------- >>
    private Set<booking>  = new HashSet<>();

    private Set<booking> getBookings() {
        return bookings;
    }

    private FirebaseDatabase getDb() {
        return db;
    }

    public Set<booking> get() {
        return ;
    }

    private void setDb(FirebaseDatabase db) {
        this.db = db;
    }

    public void link(booking _) {
        if (_ != null) {
            _.unlink();
            _.set(this);
            get().add(_);
        }
    }

    public void unlink(booking _) {
        if (_ != null) {
            _.set(null);
            get().remove(_);
        }
    }

    public void unlink(booking _, Iterator<booking> it) {
        if (_ != null) {
            _.set(null);
            it.remove();
        }
    }

// ----------- << class.extras@AAAAAAF+jh4VqdiAV1s= >>
// ----------- >>
}