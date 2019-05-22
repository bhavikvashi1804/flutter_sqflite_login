class NetworkUtil
{

  //to make our class singleton
  static NetworkUtil _instance =new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;
  // singletone class done


  Future<dynamic> get()
  {
    return null ;
  }
}