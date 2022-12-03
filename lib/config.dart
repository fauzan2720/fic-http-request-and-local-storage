class AppConfig {
  //# CONFIG
  static String yourName = "Fauzan Abdillah";
  static String phoneNumber = "082338453446";
  //# ---------------------------------------
  //# ---------------------------------------

  static String get baseUrl {
    var storage = yourName.replaceAll(" ", "-").toLowerCase();
    storage = "$storage-$phoneNumber";
    return "http://capekngoding.com:8080/$storage/api";
  }
}
