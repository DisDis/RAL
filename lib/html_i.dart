library platform.interface.html;

import 'dart:async';
import 'dart:math';
Window get window => null;

Element querySelector(String selectors){
   throw new UnimplementedError();
}

abstract class Window{
  Storage get localStorage;
  Storage get sessionStorage;
  Location get location;
  double devicePixelRatio;
  Stream<Event> onResize;

  Future<num> get animationFrame => new Future.value(0);


  void open(String url, String target, [String features]);
}

abstract class Storage implements Map<String, String> {

}

abstract class EventStreamProvider<T> extends Stream<T>{

}

class Blob{

}

abstract class WebSocket{
  static const EventStreamProvider<CloseEvent> closeEvent = null;
  static const EventStreamProvider<Event> errorEvent = null;
  static const EventStreamProvider<MessageEvent> messageEvent = null;
  static const EventStreamProvider<Event> openEvent = null;

  factory WebSocket(String url, [Object protocols]) {
    if (protocols != null) {
      return WebSocket._create_1(url, protocols);
    }
    return WebSocket._create_2(url);
  }
  static WebSocket _create_1(url, protocols) => null;
  static WebSocket _create_2(url) => null;

  static bool get supported => true;
  static const int CLOSED = 3;
  static const int CLOSING = 2;
  static const int CONNECTING = 0;
  static const int OPEN = 1;
  String binaryType;
  final int bufferedAmount;
  final String extensions;
  final String protocol;
  final int readyState;
  final String url;
  void close([int code, String reason]){
    throw new UnimplementedError();
  }
  void send(data) {
    throw new UnimplementedError();
  }

  void sendBlob(Blob data) {
    throw new UnimplementedError();
  }


  void sendByteBuffer(ByteBuffer data){
    throw new UnimplementedError();
  }

  void sendString(String data){
    throw new UnimplementedError();
  }

  void sendTypedData(TypedData data){
    throw new UnimplementedError();
  }

  Stream<CloseEvent> get onClose => null;

  Stream<Event> get onError => null;

  Stream<MessageEvent> get onMessage => null;

  Stream<Event> get onOpen => null;
}

class TypedData{

}

class ByteBuffer{

}

abstract class File{
  String get name;
  int get size;
}

abstract class Location{
  String get hash;
  String get host;
  String get hostname;
  String get href;
  String get origin;
  String get pathname;
  String get port;
  String get protocol;
  String get search;

}

class HttpRequest {
  int readyState;
  int status;
  bool withCredentials;
  String get responseText=>null;
  String responseType;

  void open(String method, String url, {bool async, String user, String password}){
    throw new UnimplementedError();
  }
  void setRequestHeader(String name, String value){
    throw new UnimplementedError();
  }
  void send([body_OR_data]){
    throw new UnimplementedError();
  }

  Stream<ProgressEvent> get onAbort => null;
  Stream<ProgressEvent> get onError => null;
  Stream<ProgressEvent> get onLoad => null;
  Stream<ProgressEvent> get onLoadEnd => null;
  Stream<ProgressEvent> get onLoadStart => null;
  Stream<ProgressEvent> get onProgress => null;
  Stream<ProgressEvent> get onTimeout => null;

  void abort(){
    throw new UnimplementedError();
  }
  String getAllResponseHeaders(){
    throw new UnimplementedError();
  }
  String getResponseHeader(String name){
    throw new UnimplementedError();
  }
  void overrideMimeType(String mime) {
    throw new UnimplementedError();
  }
  Stream<ProgressEvent> get onReadyStateChange => null;
}
abstract class ProgressEvent{

}

class Event{
  Event(String type,      {bool canBubble: true, bool cancelable: true}) {
  }

  Event.eventType(String type, String name, {bool canBubble: true,
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

  String get type=> null;


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

class CloseEvent extends Event{
  CloseEvent(String type) : super(type);

}

class MessageEvent extends Event{
  MessageEvent(String type,
      {bool canBubble: false, bool cancelable: false, Object data,
      String origin, String lastEventId,
      Window source, List<MessagePort> messagePorts}): super(type);
  dynamic get data => null;


  String get lastEventId=>null;

  String get origin => null;

  EventTarget get source => null;
}

class Element extends Node{
    Stream<MouseEvent> onMouseDown;
    Stream<MouseEvent> onMouseMove;
    Stream<MouseEvent> onMouseLeave;
    Stream<MouseEvent> onMouseUp;
    Stream<Event>      onScroll;
    Stream<WheelEvent> onMouseWheel;
    Stream<Event>      onDoubleClick;

    int scrollTop;
    int clientWidth;
    int clientHeight;
    int offsetWidth;
    int scrollLeft;
    int scrollHeight;
    int scrollWidth;

    CssStyleDeclaration style;

    void focus() {
      throw new UnimplementedError();
    }
}

class Document extends Node {
    Stream<MouseEvent> onMouseDown;
    Stream<MouseEvent> onMouseMove;
    Stream<MouseEvent> onMouseLeave;
    Stream<MouseEvent> onMouseUp;
    Stream<WheelEvent> onMouseWheel;
    Stream<Event>      onDoubleClick;
}

class Node{
    Document ownerDocument;
}

class EventTarget {

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
}

class WheelEvent extends MouseEvent {
    num deltaY;
    num deltaX;
    int deltaMode;
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
}

class HtmlElement extends Element {
}
 
class CssStyleDeclaration {
    String width;
    String height;
    String backgroundColor;
} 

class CssClassSet {
    bool remove(Object value){
        throw new UnimplementedError();    
    }

    bool add(String value){
        throw new UnimplementedError();    
    }
}

class CanvasElement extends HtmlElement {
    CanvasRenderingContext2D context2D;
    CssStyleDeclaration style;
    CssClassSet classes;

    int width;
    int height;

    factory CanvasElement({int width, int height}) {
        var e =  new CanvasElement();
        if (width != null) e.width = width;
        if (height != null) e.height = height;
        return e;
    }
}