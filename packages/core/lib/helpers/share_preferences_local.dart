import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// Interfaz para el servicio de almacenamiento local
abstract class ILocalStorageService {
  Future<bool> clear();
  Future<bool> remove(String key);

  // Métodos para objetos JSON
  Map<String, dynamic> getObject(String key);
  Future<bool> setObject(String key, Map<String, dynamic> value);

  // Métodos para tipos básicos
  int getInt(String key, {int defaultValue = 0});
  Future<bool> setInt(String key, int value);

  bool getBool(String key, {bool defaultValue = false});
  Future<bool> setBool(String key, bool value);

  String getString(String key, {String defaultValue = ''});
  Future<bool> setString(String key, String value);

  double getDouble(String key, {double defaultValue = 0.0});
  Future<bool> setDouble(String key, double value);

  List<String> getStringList(
    String key, {
    List<String> defaultValue = const <String>[],
  });
  Future<bool> setStringList(String key, List<String> value);

  // Métodos de utilidad
  bool containsKey(String key);
  Set<String> getKeys();
  Future<void> reload();
}

/// Implementación del servicio de almacenamiento local usando SharedPreferences
class LocalStorageService implements ILocalStorageService {

  const LocalStorageService(this._localStorage);
  final SharedPreferences _localStorage;

  /// Factory method para crear una instancia inicializada
  static Future<LocalStorageService> create() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return LocalStorageService(prefs);
    } catch (e) {
      throw Exception('Error initializing SharedPreferences: $e');
    }
  }

  @override
  Future<bool> clear() async {
    return await _localStorage.clear();
  }

  @override
  Future<bool> remove(String key) async {
    return await _localStorage.remove(key);
  }

  @override
  Map<String, dynamic> getObject(String key) {
    final String? jsonString = _localStorage.getString(key);
    if (jsonString == null || jsonString.isEmpty) {
      return <String, dynamic>{};
    }

    try {
      return json.decode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return <String, dynamic>{};
    }
  }

  @override
  Future<bool> setObject(String key, Map<String, dynamic> value) async {
    try {
      final String jsonString = json.encode(value);
      return await _localStorage.setString(key, jsonString);
    } catch (e) {
      return false;
    }
  }

  @override
  int getInt(String key, {int defaultValue = 0}) {
    return _localStorage.getInt(key) ?? defaultValue;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    return await _localStorage.setInt(key, value);
  }

  @override
  bool getBool(String key, {bool defaultValue = false}) {
    return _localStorage.getBool(key) ?? defaultValue;
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    return await _localStorage.setBool(key, value);
  }

  @override
  String getString(String key, {String defaultValue = ''}) {
    return _localStorage.getString(key) ?? defaultValue;
  }

  @override
  Future<bool> setString(String key, String value) async {
    return await _localStorage.setString(key, value);
  }

  @override
  double getDouble(String key, {double defaultValue = 0.0}) {
    return _localStorage.getDouble(key) ?? defaultValue;
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return await _localStorage.setDouble(key, value);
  }

  @override
  List<String> getStringList(
    String key, {
    List<String> defaultValue = const <String>[],
  }) {
    return _localStorage.getStringList(key) ?? defaultValue;
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    return await _localStorage.setStringList(key, value);
  }

  @override
  bool containsKey(String key) {
    return _localStorage.containsKey(key);
  }

  @override
  Set<String> getKeys() {
    return _localStorage.getKeys();
  }

  @override
  Future<void> reload() async {
    await _localStorage.reload();
  }
}
