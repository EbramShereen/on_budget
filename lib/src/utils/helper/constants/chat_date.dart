class ChatDate {
  final DateTime _now = DateTime.now();

  int dateTimeNowByHour = DateTime.now().hour;
  int dateTimeNowByMinute = DateTime.now().minute;
  String hourSmallerThanTen = '0${DateTime.now().hour}';
  String hourBiggerThanTen = '${DateTime.now().hour}';
  String minuteSmallerThanTen = '0${DateTime.now().minute}';
  String minuteBiggerThanTen = '${DateTime.now().minute}';

  String date() {
    int hour12 = _now.hour > 12 ? _now.hour - 12 : _now.hour;
    if (hour12 == 0) {
      hour12 = 12; 
    }
    String dateHour = hour12 < 10 ? '0$hour12' : '$hour12';
    String dateMinute = _now.minute < 10 ? '0${_now.minute}' : '${_now.minute}';
    String period = _now.hour < 12 ? 'AM' : 'PM';
    return '$dateHour:$dateMinute $period';
  }
}
