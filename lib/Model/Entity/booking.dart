class booking {
  String key;
  String clientEmail;
  String stylistEmail;
  String type;
  DateTime appointmentDate;

  booking(this.key, this.clientEmail, this.stylistEmail, this.type,
      this.appointmentDate);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['clientEmail'] = clientEmail;
    map['stylistEmail'] = stylistEmail;
    map['type'] = type;
    map['appointmentDate'] = appointmentDate.toString();
    return map;
  }
}
