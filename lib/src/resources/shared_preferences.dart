import 'package:shared_preferences/shared_preferences.dart';

class CustomSharedPreferences {
  ///
  /// Instantiation of the SharedPreferences library
  ///
  final String _kNotificationsPrefs  = "allowNotifications";
  final String _kSortingOrderPrefs = "sortOrder"  ;

   
   
  /// ------------------------------------------------------------
  /// Method that returns the user decision to allow notifications
  /// ------------------------------------------------------------
  Future<bool> getAllowsNotifications() async {
	final SharedPreferences prefs = await SharedPreferences.getInstance();

  	return prefs.getBool(_kNotificationsPrefs) ?? false;
  }

  /// ----------------------------------------------------------
  /// Method that saves the user decision to allow notifications
  /// ----------------------------------------------------------
  Future<bool> setAllowsNotifications(bool value) async {
	final SharedPreferences prefs = await SharedPreferences.getInstance();

	return prefs.setBool(_kNotificationsPrefs, value);
  }

  /// ------------------------------------------------------------
  /// Method that returns the user decision on sorting order
  /// ------------------------------------------------------------
  Future<String> getSortingOrder() async {
	final SharedPreferences prefs = await SharedPreferences.getInstance();

	return prefs.getString(_kSortingOrderPrefs) ?? 'name';
  }

  /// ----------------------------------------------------------
  /// Method that saves the user decision on sorting order
  /// ----------------------------------------------------------
  Future<bool> setSortingOrder(String value) async {
	final SharedPreferences prefs = await SharedPreferences.getInstance();

	return prefs.setString(_kSortingOrderPrefs, value);
  }

  /// ------------------------------------------------------------
  /// Method that returns the presence of user decision to allow notifications
  /// ------------------------------------------------------------
  Future<bool> checkAllowsNotifications() async {
	final SharedPreferences prefs = await SharedPreferences.getInstance();

  	return prefs.containsKey(_kNotificationsPrefs) ?? false;
  }

}