import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefenceHelper {
  static String userIdKey = 'USERIDKEY';
  static String userNameKey = 'USERNAMEKEY';
  static String userEmailKey = 'USEREMAILKEY';
  static String userWalletKey = 'USERWALLETKEY';

  Future<bool> saveUserId(String getuserid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userIdKey, getuserid);
  }

  Future<bool> saveUserName(String getusername) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userNameKey, getusername);
  }

  Future<bool> saveUserEmail(String getuserEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userEmailKey, getuserEmail);
  }

  Future<bool> saveUserWallet(String getuserwallet) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(userWalletKey, getuserwallet);
  }

  Future<String?> getUserID() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userIdKey);
  }

  Future<String?> getUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userNameKey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userEmailKey);
  }

  Future<String?> getUserWallet() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userWalletKey);
  }
}
