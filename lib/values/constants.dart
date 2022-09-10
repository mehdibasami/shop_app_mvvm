class Constants {
  static final Constants _singleton = Constants._internal();
  factory Constants() => _singleton;

  Constants._internal();
  //Network
  static const String baseUrl = 'adminbackendapp.bodyremix.ir';
}
