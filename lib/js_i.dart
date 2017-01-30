library platform.interface.js;

abstract class JsObject{

}

JsObject get context => null;

Function/*=F*/ allowInterop/*<F extends Function>*/(Function/*=F*/ f) {
  throw new UnimplementedError();
}

Function allowInteropCaptureThis(Function f) {
  throw new UnimplementedError();
}
