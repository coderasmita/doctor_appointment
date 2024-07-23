class CancelAppointment {
  final String text;

  CancelAppointment({required this.text});
  static List<CancelAppointment> cancelList = [
    CancelAppointment(text: "I Want to change to another doctor"),
    CancelAppointment(text: "I Want to change package"),
    CancelAppointment(text: "I don't want to consult"),
    CancelAppointment(text: "I have recovered from the disease"),
    CancelAppointment(text: "I have found a suitable medicine"),
    CancelAppointment(text: "I just want to cancel"),
    CancelAppointment(text: "I dont't want to tell"),
    CancelAppointment(text: "I other"),
  ];
}
