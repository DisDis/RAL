import 'package:RAL/html_i.dart' as interface;
import 'package:RAL/io/html/src/storage.dart';

class Window implements interface.Window {
  static final Window _window = new Window._internal();

  factory Window() {
    return _window;
  }

  Window._internal();

  static final interface.Location _location = new Location();

  Location get location => _location;

  interface.Storage get localStorage => new Storage();

  interface.Storage get sessionStorage => new Storage();

  void open(String url, String target, [String features]) => null;
}

class Location implements interface.Location{

  String get hash => '';

  String get host => 'localhost';

  String get hostname => '';

  String get href => '';

  String get origin =>'';

  String get pathname => '';

  String get port => '';

  String get protocol => '';

  String get search => '';
}