class User
{
  String _username,_password;

  User(this._username,this._password);


  //this is for the api
  User.map(dynamic obj)
  {
    this._username=obj['username'];
    this._password=obj['password'];
  }

  String get Username => _username;
  String get Password => _password;

  Map<String,dynamic> toMap()
  {
    var map=new Map <String,dynamic>();
    map["username"]=_username;
    map["password"]=_password;
    return map;
  }

}