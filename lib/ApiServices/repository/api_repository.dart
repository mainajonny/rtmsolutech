class Repository {
  // TODO handle environments (dev. staging.)
  static const String env = "https://";
  static const String baseurl =
      "${env}kqgbftwsodpttpqgqnbh.supabase.co/rest/v1";

  //Paths
  static const visits = '/visits';
  static const customers = '/customers';
  static const activities = '/activities';
}
