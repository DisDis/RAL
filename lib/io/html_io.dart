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
  bool metaKey;
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

class KeyboardEvent extends UIEvent {
  bool ctrlKey;
  bool metaKey;
  bool altKey;
  bool shiftKey;
  int keyCode;
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
  Stream<KeyboardEvent> onKeyDown = new StreamController<KeyboardEvent>.broadcast(sync: true).stream;
  Stream<KeyboardEvent> onKeyUp = new StreamController<KeyboardEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onContextMenu = new StreamController<MouseEvent>.broadcast(sync: true).stream;

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

  void click() {
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

  CssStyleDeclaration getComputedStyle() {
    throw new UnimplementedError();
  }
}

class Node extends EventTarget{
  Document ownerDocument;
}

class Document extends Node {
  Stream<MouseEvent> onMouseDown = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseMove = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseLeave = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onMouseUp = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<KeyboardEvent> onKeyDown = new StreamController<KeyboardEvent>.broadcast(sync: true).stream;
  Stream<KeyboardEvent> onKeyUp = new StreamController<KeyboardEvent>.broadcast(sync: true).stream;
  Stream<MouseEvent> onClick = new StreamController<MouseEvent>.broadcast(sync: true).stream;
  Stream<Event>      onScroll = new StreamController<Event>.broadcast(sync: true).stream;
  Stream<WheelEvent> onMouseWheel = new StreamController<WheelEvent>.broadcast(sync: true).stream;
  Stream<Event>      onDoubleClick = new StreamController<Event>.broadcast(sync: true).stream;

  List<Node> getElementsByTagName(String name) {
    throw new UnimplementedError();
  }
}

class EventTarget {
  void addEventListener(String type, EventListener listener,
      [bool useCapture]) {
    throw new UnimplementedError();
  }

  void removeEventListener(String type, EventListener listener,
      [bool useCapture]) {
    throw new UnimplementedError();
  }
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
  String letterSpacing;
  String display;
  String overflowX;
  String overflowY;
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

class AnchorElement extends HtmlElement {
  String href;
  String target;
  String rel;
}

abstract class Blob {
  int get size;
  String get type;
}

abstract class File extends Blob {
  String get name;
}

typedef EventListener(Event event);

abstract class KeyCode {
  static const int WIN_KEY_FF_LINUX = 0;
  static const int MAC_ENTER = 3;
  static const int BACKSPACE = 8;
  static const int TAB = 9;
  static const int NUM_CENTER = 12;
  static const int ENTER = 13;
  static const int SHIFT = 16;
  static const int CTRL = 17;
  static const int ALT = 18;
  static const int PAUSE = 19;
  static const int CAPS_LOCK = 20;
  static const int ESC = 27;
  static const int SPACE = 32;
  static const int PAGE_UP = 33;
  static const int PAGE_DOWN = 34;
  static const int END = 35;
  static const int HOME = 36;
  static const int LEFT = 37;
  static const int UP = 38;
  static const int RIGHT = 39;
  static const int DOWN = 40;
  static const int NUM_NORTH_EAST = 33;
  static const int NUM_SOUTH_EAST = 34;
  static const int NUM_SOUTH_WEST = 35;
  static const int NUM_NORTH_WEST = 36;
  static const int NUM_WEST = 37;
  static const int NUM_NORTH = 38;
  static const int NUM_EAST = 39;
  static const int NUM_SOUTH = 40;
  static const int PRINT_SCREEN = 44;
  static const int INSERT = 45;
  static const int NUM_INSERT = 45;
  static const int DELETE = 46;
  static const int NUM_DELETE = 46;
  static const int ZERO = 48;
  static const int ONE = 49;
  static const int TWO = 50;
  static const int THREE = 51;
  static const int FOUR = 52;
  static const int FIVE = 53;
  static const int SIX = 54;
  static const int SEVEN = 55;
  static const int EIGHT = 56;
  static const int NINE = 57;
  static const int FF_SEMICOLON = 59;
  static const int FF_EQUALS = 61;
  static const int QUESTION_MARK = 63;
  static const int A = 65;
  static const int B = 66;
  static const int C = 67;
  static const int D = 68;
  static const int E = 69;
  static const int F = 70;
  static const int G = 71;
  static const int H = 72;
  static const int I = 73;
  static const int J = 74;
  static const int K = 75;
  static const int L = 76;
  static const int M = 77;
  static const int N = 78;
  static const int O = 79;
  static const int P = 80;
  static const int Q = 81;
  static const int R = 82;
  static const int S = 83;
  static const int T = 84;
  static const int U = 85;
  static const int V = 86;
  static const int W = 87;
  static const int X = 88;
  static const int Y = 89;
  static const int Z = 90;
  static const int META = 91;
  static const int WIN_KEY_LEFT = 91;
  static const int WIN_KEY_RIGHT = 92;
  static const int CONTEXT_MENU = 93;
  static const int NUM_ZERO = 96;
  static const int NUM_ONE = 97;
  static const int NUM_TWO = 98;
  static const int NUM_THREE = 99;
  static const int NUM_FOUR = 100;
  static const int NUM_FIVE = 101;
  static const int NUM_SIX = 102;
  static const int NUM_SEVEN = 103;
  static const int NUM_EIGHT = 104;
  static const int NUM_NINE = 105;
  static const int NUM_MULTIPLY = 106;
  static const int NUM_PLUS = 107;
  static const int NUM_MINUS = 109;
  static const int NUM_PERIOD = 110;
  static const int NUM_DIVISION = 111;
  static const int F1 = 112;
  static const int F2 = 113;
  static const int F3 = 114;
  static const int F4 = 115;
  static const int F5 = 116;
  static const int F6 = 117;
  static const int F7 = 118;
  static const int F8 = 119;
  static const int F9 = 120;
  static const int F10 = 121;
  static const int F11 = 122;
  static const int F12 = 123;
  static const int NUMLOCK = 144;
  static const int SCROLL_LOCK = 145;

  static const int FIRST_MEDIA_KEY = 166;
  static const int LAST_MEDIA_KEY = 183;

  static const int SEMICOLON = 186;
  static const int DASH = 189;
  static const int EQUALS = 187;
  static const int COMMA = 188;
  static const int PERIOD = 190;
  static const int SLASH = 191;
  static const int APOSTROPHE = 192;
  static const int TILDE = 192;
  static const int SINGLE_QUOTE = 222;
  static const int OPEN_SQUARE_BRACKET = 219;
  static const int BACKSLASH = 220;
  static const int CLOSE_SQUARE_BRACKET = 221;
  static const int WIN_KEY = 224;
  static const int MAC_FF_META = 224;
  static const int WIN_IME = 229;

  static const int UNKNOWN = -1;
}