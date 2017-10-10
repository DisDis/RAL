import 'dart:async';
import 'html/src/window.dart';

import 'package:RAL/html_i.dart' as interface;
export 'html/src/window.dart';
export 'html/src/storage.dart';
export 'dart:io';

Window get window => new Window();

class Element extends Node {
  Stream<interface.MouseEvent> onMouseDown = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseMove = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseLeave = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseUp = new StreamController.broadcast(sync: true).stream;
  Stream<interface.Event>      onScroll = new StreamController.broadcast(sync: true).stream;
  Stream<interface.WheelEvent> onMouseWheel = new StreamController.broadcast(sync: true).stream;
  Stream<interface.Event>      onDoubleClick = new StreamController.broadcast(sync: true).stream;

  int scrollTop = 0;
  int clientWidth = 0;
  int clientHeight = 0;
  int offsetWidth = 0;
  int scrollLeft = 0;
  int scrollHeight = 0;
  int scrollWidth = 0;

  interface.CssStyleDeclaration style = new interface.CssStyleDeclaration();

  Element([Document ownerDocument]) : super(ownerDocument);

  void focus() {
    throw new UnimplementedError();
  }
}

class Document extends Node {
  Stream<interface.MouseEvent> onMouseDown = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseMove = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseLeave = new StreamController.broadcast(sync: true).stream;
  Stream<interface.MouseEvent> onMouseUp = new StreamController.broadcast(sync: true).stream;
  Stream<interface.WheelEvent> onMouseWheel = new StreamController.broadcast(sync: true).stream;
  Stream<interface.Event>      onDoubleClick = new StreamController.broadcast(sync: true).stream;
}

class Node{
  Document ownerDocument;

  Node([this.ownerDocument]);
}

class HtmlElement extends Element {
  HtmlElement([Document ownerDocument]) : super(ownerDocument);
}

class CanvasElement extends HtmlElement {
  CanvasElement({int width, int height, Document ownerDocument}) : super(ownerDocument);
}
