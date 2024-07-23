class RescheduleAppointmentModel {
  final String text;

  RescheduleAppointmentModel({required this.text});

  static List<RescheduleAppointmentModel> rescheduleList = [
    RescheduleAppointmentModel(text: "I'm having a schedule clash"),
    RescheduleAppointmentModel(text: "I'm not available on schedule"),
    RescheduleAppointmentModel(
        text: "I have a activity that cant't be left behind"),
    RescheduleAppointmentModel(text: "I don't want to tell"),
    RescheduleAppointmentModel(text: "Other"),
  ];
}
