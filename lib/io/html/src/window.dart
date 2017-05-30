import 'package:RAL/html_i.dart' as interface;

class Window implements interface.Window {
  static final Window _window = new Window._internal();

  factory Window() {
    return _window;
  }

  Window._internal();

  static final interface.Location _location = new Location();

  Location get location => _location;

  interface.Storage get localStorage => null;

  interface.Storage get sessionStorage => null;

  void open(String url, String target, [String features]) => null;
}

class Location implements interface.Location{

  String get hash => '';

  String get host => 'localhost';
}