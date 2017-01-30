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

class Element extends Node{

}

class Node{

}

class EventTarget {

}
