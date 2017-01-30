library platform.interface.html;

import 'dart:async';
Window get window => null;

abstract class Window{
  Storage get localStorage;
  Location get location;
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
  String get host;
  String get hash;
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

}

class Node{

}

class EventTarget {

}

class MessagePort extends EventTarget {

}
