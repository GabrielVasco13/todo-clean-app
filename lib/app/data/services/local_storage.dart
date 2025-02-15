import 'package:result_dart/result_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/app/data/exceptions/exceptions.dart';

class LocalStorage {
  AsyncResult<String> saveData(String key, String value) async {
    try {
      final shared = await SharedPreferences.getInstance();
      shared.setString(key, value);
      return Success(value);
    } catch (e, s) {
      return Failure(LocalStorageExpection(e.toString(), stackTrace: s));
    }
  }

  AsyncResult<String> getData(String key) async {
    try {
      final shared = await SharedPreferences.getInstance();
      final value = shared.getString(key);
      return value != null
          ? Success(value)
          : Failure(LocalStorageExpection('Key not found'));
    } catch (e, s) {
      return Failure(LocalStorageExpection(e.toString(), stackTrace: s));
    }
  }

  AsyncResult<Unit> removeData(String key) async {
    try {
      final shared = await SharedPreferences.getInstance();
      shared.remove(key);
      return const Success(unit);
    } catch (e, s) {
      return Failure(LocalStorageExpection(e.toString(), stackTrace: s));
    }
  }

  AsyncResult<String> updateData(String key, String value) async {
    try {
      final shared = await SharedPreferences.getInstance();
      final existingValue = shared.getString(key);
      if (existingValue == null) {
        return Failure(LocalStorageExpection('Key not found'));
      }

      await shared.setString(key, value);
      return Success(value);
    } catch (e, s) {
      return Failure(LocalStorageExpection(e.toString(), stackTrace: s));
    }
  }
}
