library platform.interface.js;

import 'dart:collection';

class JsObject {
  JsObject(JsFunction constructor, [List arguments]) ;

  JsObject.fromBrowserObject(object);

  JsObject.jsify(object) ;
  operator [](property) =>null;

  operator []=(property, value){}

  callMethod(String method, [List args])=> null;

  void deleteProperty(String property) => null;

  bool hasProperty(String property) => null;

  bool instanceof(JsFunction type) =>null;
}

class JsFunction extends JsObject {
  JsFunction.internal(Function function):super(null);

  JsFunction.withThis(Function f):super(null);

  dynamic apply(List args, {thisArg}) => null;
}

class JsArray<E> extends JsObject with ListMixin<E> {
  JsArray.internal([List<E> list]) : super.fromBrowserObject(null);

  JsArray.from(Iterable<E> other) : super.fromBrowserObject(null);


  E operator [](index) =>null;

  void operator []=(index, value) =>null;

  int get length =>null;

  void set length(int length) =>null;

  void add(E value) =>null;

  void addAll(Iterable<E> iterable)=>null;

  void insert(int index, E element) =>null;

  E removeAt(int index) =>null;

  E removeLast() =>null;

  void removeRange(int start, int end) =>null;

  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0])=>null;

  void sort([int compare(E a, E b)])=>null;
}

JsObject get context => null;

Function/*=F*/ allowInterop/*<F extends Function>*/(Function/*=F*/ f) {
  throw new UnimplementedError();
}

Function allowInteropCaptureThis(Function f) {
  throw new UnimplementedError();
}
