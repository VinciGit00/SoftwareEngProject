/*
* This code has been generated by the Rebel: a code generator for modern Java.
*
* Drop us a line or two at feedback@archetypesoftware.com: we would love to hear from you!
*/
package Model1;

import java.util.*;
import java.time.*;



// ----------- << imports@AAAAAAF+jh84FNkpYEY= >>
// ----------- >>

// ----------- << class.annotations@AAAAAAF+jh84FNkpYEY= >>
// ----------- >>
public class user {
    // ----------- << attribute.annotations@AAAAAAF+jipjt9oKQjI= >>
    // ----------- >>
    private String email;

    // ----------- << attribute.annotations@AAAAAAF+jip+F9oSxhU= >>
    // ----------- >>
    private String nick;

    // ----------- << attribute.annotations@AAAAAAF+jiqkkdoZe/M= >>
    // ----------- >>
    private String street;

    // ----------- << attribute.annotations@AAAAAAF+jirPdNogdvQ= >>
    // ----------- >>
    private FirebaseDatabase database;

    // ----------- << attribute.annotations@AAAAAAF+sQSjqV4XZiE= >>
    // ----------- >>
    private static user instance;

    public String getEmail() {
        return email;
    }

    public String getNick() {
        return nick;
    }

    public String getStreet() {
        return street;
    }

    public FirebaseDatabase getDatabase() {
        return database;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setDatabase(FirebaseDatabase database) {
        this.database = database;
    }

    // ----------- << method.annotations@AAAAAAF+sQQxUlynHaQ= >>
    // ----------- >>
    private void privateConstructor() {
    // ----------- << method.body@AAAAAAF+sQQxUlynHaQ= >>
    // ----------- >>
    }
    // ----------- << method.annotations@AAAAAAF+sQVWmV9STzk= >>
    // ----------- >>
    public static user user() {
    // ----------- << method.body@AAAAAAF+sQVWmV9STzk= >>
    // ----------- >>
    }
    /**
    * @param email 
    * @param nick 
    * @param street
    */

    // ----------- << method.annotations@AAAAAAF+sRCozmoDCls= >>
    // ----------- >>
    public Future<void> addUserInfo(String email, String nick, String street) {
    // ----------- << method.body@AAAAAAF+sRCozmoDCls= >>
    // ----------- >>
    }
    // ----------- << method.annotations@AAAAAAF+sRCr+GpIYtA= >>
    // ----------- >>
    public Future<void> getUserInfo() {
    // ----------- << method.body@AAAAAAF+sRCr+GpIYtA= >>
    // ----------- >>
    }
// ----------- << class.extras@AAAAAAF+jh84FNkpYEY= >>
// ----------- >>
}