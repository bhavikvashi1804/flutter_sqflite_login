import 'package:flutter_sqflite/utils/network_util.dart';
import 'package:flutter_sqflite/models/user.dart';

class RestData
{
  NetworkUtil _networkUtil=new NetworkUtil();
  static final baseURL="";
  static final LoginURL=baseURL+"/";




  Future<User> login(String username, String password) {
    return new Future.value(new User(username, password));
  }
}