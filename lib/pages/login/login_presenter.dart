import 'package:flutter_sqflite/models/user.dart';
import 'package:flutter_sqflite/data/rest_data.dart';
abstract class LoginPageContract
{
  void onLoginSuccess(User user);
  void onLoginError(String error);
}


class LogingPagePresenter
{
  LoginPageContract _view;
  RestData api =new RestData();
  LogingPagePresenter(this._view);

  doLogin(String username,String password)
  {
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError.toString()));
  }
}