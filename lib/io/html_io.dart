import 'dart:async';
import 'dart:math';
import 'html/src/window.dart';
export 'html/src/window.dart';
export 'html/src/storage.dart';
export 'dart:io';

Window get window => new Window();

class MessageEvent extends Event{
  MessageEvent(String type,
      {bool canBubble: false, bool cancelable: false, Object this.data,
      String origin, String lastEventId,
      Window source, List<MessagePort> messagePorts}): super(type);
  final dynamic data;

  String get lastEventId=>null;

  String get origin => null;

  EventTarget get source => null;
}

class Event{
  Event(String this.type,      {bool canBubble: true, bool cancelable: true}) {
  }

  Event.eventType(String this.type, String name, {bool canBubble: true,
  bool cancelable: true}) {
  }

  Element get matchingTarget => null;


  static const int AT_TARGET = 2;

  static const int BUBBLING_PHASE = 3;

  static const int CAPTURING_PHASE = 1;

  bool get bubbles=>null;

  bool get cancelable=>null;

  EventTarget get currentTarget => null;

  bool get defaultPrevented => null;

  int get eventPhase => null;


  List<EventTarget> get path => null;

  EventTarget get target => null;

  int get timeStamp=> null;

  final String type;


  void preventDefault(){
    throw new UnimplementedError();
  }

  void stopImmediatePropagation(){
    throw new UnimplementedError();
  }

  void stopPropagation(){
    throw new UnimplementedError();
  }
}

class MessagePort extends EventTarget {

}

class UIEvent extends Event {
  UIEvent(): super("UIEvent");
}

class MouseEvent extends UIEvent {
  Point offset;
  bool ctrlKey;
  bool altKey;
  bool shiftKey;
  Point screen;
  Point client;
}

class WheelEvent extends MouseEvent {
  num deltaY;
  num deltaX;
  int deltaMode;
}

class NodeValidator {

}

class NodeTreeSanitizer {
  static const trusted = null;
}

class Element extends Node{
  Stream<MouseEvent> onMouseDown = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseMove = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseLeave = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseUp = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onClick = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<Event>      onScroll = new StreamController<Event>.broadcast(sync: true).stream;
  Stream<WheelEvent> onMouseWheel = new StreamController<WheelEvent>.broadcast(sync: true).stream;
  Stream<Event>      onDoubleClick = new StreamController<Event>.broadcast(sync: true).stream;

  int scrollTop;
  int clientWidth;
  int clientHeight;
  int offsetWidth;
  int scrollLeft;
  int scrollHeight;
  int scrollWidth;
  bool hidden;

  CssStyleDeclaration style;

  CssClassSet classes = new CssClassSet();

  void focus() {
    throw new UnimplementedError();
  }

  Rectangle getBoundingClientRect() {
    throw new UnimplementedError();
  }

  void setInnerHtml(String html) {
    throw new UnimplementedError();
  }

  void appendHtml(String text,
      {NodeValidator validator, NodeTreeSanitizer treeSanitizer}) {
    throw new UnimplementedError();
  }
}

class Node{
  Document ownerDocument;
}

class Document extends Node {
  Stream<MouseEvent> onMouseDown = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseMove = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseLeave = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseUp = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onClick = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<Event>      onScroll = new StreamController<Event>.broadcast(sync: true).stream;
  Stream<WheelEvent> onMouseWheel = new StreamController<WheelEvent>.broadcast(sync: true).stream;
  Stream<Event>      onDoubleClick = new StreamController<Event>.broadcast(sync: true).stream;

  List<Node> getElementsByTagName(String name) {
    throw new UnimplementedError();
  }
}

class EventTarget {

}

class TextMetrics{
  num width;
}

class CanvasPattern{
}

class Path2D{
}

class CanvasRenderingContext2D {
  Object fillStyle;
  Object strokeStyle;
  num lineWidth;
  String textAlign;
  String font;
  String lineCap;
  String lineJoin;
  num miterLimit;
  String globalCompositeOperation;

  double backingStorePixelRatio;

  void beginPath(){
    throw new UnimplementedError();
  }

  void scale(num x, num y){
    throw new UnimplementedError();
  }

  void rect(num x, num y, num width, num height){
    throw new UnimplementedError();
  }

  void clip(){
    throw new UnimplementedError();
  }

  void save(){
    throw new UnimplementedError();
  }

  void restore(){
    throw new UnimplementedError();
  }

  void translate(num x, num y){
    throw new UnimplementedError();
  }

  void clearRect(num x, num y, num width, num height){
    throw new UnimplementedError();
  }

  void arc(num x, num y, num radius, num startAngle, num endAngle,
      [bool anticlockwise = false]) {
    throw new UnimplementedError();
  }

  void fill([String winding = 'nonzero']) {
    throw new UnimplementedError();
  }

  void stroke([Path2D path]){
    throw new UnimplementedError();
  }

  void fillRect(num x, num y, num width, num height){
    throw new UnimplementedError();
  }

  void strokeRect(num x, num y, num width, num height){
    throw new UnimplementedError();
  }

  void moveTo(num x, num y){
    throw new UnimplementedError();
  }

  void lineTo(num x, num y){
    throw new UnimplementedError();
  }

  void setLineDash(List<num> dash) {
    throw new UnimplementedError();
  }

  void fillText(String text, num x, num y, [num maxWidth]) {
    throw new UnimplementedError();
  }

  TextMetrics measureText(String text){
    throw new UnimplementedError();
  }

  void closePath(){
    throw new UnimplementedError();
  }

  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y){
    throw new UnimplementedError();
  }

  CanvasPattern createPattern(Object image, String repetitionType){
    throw new UnimplementedError();
  }

  void rotate(num angle){
    throw new UnimplementedError();
  }

  void quadraticCurveTo(num cpx, num cpy, num x, num y){
    throw new UnimplementedError();
  }
}

class CssStyleDeclaration {
  String width;
  String height;
  String backgroundColor;
  String top;
}

class CssClassSet {
  bool remove(Object value){
    throw new UnimplementedError();
  }

  bool add(String value){
    throw new UnimplementedError();
  }
}

class HtmlElement extends Element {
}

class CanvasElement extends HtmlElement {
  CanvasRenderingContext2D context2D = new CanvasRenderingContext2D();
  CssStyleDeclaration style = new CssStyleDeclaration();

  int width;
  int height;

  CanvasElement({int width, int height}) {
    if (width != null) this.width = width;
    if (height != null) this.height = height;
  }
}

abstract class File {
  String get name;
  int get size;
}

abstract class Blob {
  int get size;
  String get type;
}