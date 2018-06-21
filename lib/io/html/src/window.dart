import 'dart:async';
import 'package:RAL/html_i.dart' as interface;
import 'package:RAL/io/html/src/storage.dart';

class Window implements interface.Window {
  static final Window _window = new Window._internal();

  factory Window() {
    return _window;
  }

  Window._internal();

  static final interface.Location _location = new Location();

  interface.Location location = _location;

  interface.Storage get localStorage => new Storage();

  interface.Storage get sessionStorage => new Storage();

  interface.Document get document => null;

  interface.Window opener;

  Window open(String url, String target, [String features]) => null;

  @override
  double devicePixelRatio;

  @override
  Stream<interface.Event> onResize;

  // TODO: implement animationFrame
  @override
  Future<num> get animationFrame => null;
}

class Location implements interface.Location{

  String get hash => '';

  String get host => 'localhost';

  String get hostname => '';

  String href = '';

  String get origin =>'';

  String get pathname => '';

  String get port => '';

  String get protocol => '';

  String get search => '';

  @override
  void reload() {
  }
}