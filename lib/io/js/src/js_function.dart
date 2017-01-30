part of platform.io.js;

class JsFunction extends JsObject {
  final Function _function;
  JsFunction._internal(Function function)
    : _function = function,
      super.internal();

  JsFunction.internal(Function function)
    : _function = function,
      super.internal() {
    _obj["prototype"] = new JsObject.internal().._constructor = this;
    _obj["apply"] = new JsFunction._internal((that, args) {
      return this.apply(args, thisArg: that);
    });
    _obj["call"] = new JsFunction._internal((_that, that, [a1 = _UNDEFINED,
    a2 = _UNDEFINED, a3 = _UNDEFINED, a4 = _UNDEFINED, a5 = _UNDEFINED,
    a6 = _UNDEFINED, a7 = _UNDEFINED, a8 = _UNDEFINED, a9 = _UNDEFINED,
    a10 = _UNDEFINED]) {
      List args = [];
      if (a1 != _UNDEFINED) {
        args.add(a1);
      }
      if (a2 != _UNDEFINED) {
        args.add(a2);
      }
      if (a3 != _UNDEFINED) {
        args.add(a3);
      }
      if (a4 != _UNDEFINED) {
        args.add(a4);
      }
      if (a5 != _UNDEFINED) {
        args.add(a5);
      }
      if (a6 != _UNDEFINED) {
        args.add(a6);
      }
      if (a7 != _UNDEFINED) {
        args.add(a7);
      }
      if (a8 != _UNDEFINED) {
        args.add(a8);
      }
      if (a9 != _UNDEFINED) {
        args.add(a9);
      }
      if (a10 != _UNDEFINED) {
        args.add(a10);
      }
      return this.apply(args, thisArg: that);
    });
  }

  /**
   * Returns a [JsFunction] that captures its 'this' binding and calls [f]
   * with the value of this passed as the first argument.
   */
  factory JsFunction.withThis(Function f) => new JsFunction.internal(f);

  /**
   * Invokes the JavaScript function with arguments [args]. If [thisArg] is
   * supplied it is the value of `this` for the invocation.
   */
  dynamic apply(List args, {thisArg}) {
    if (_isDebug) {
      print("$this apply args:$args this:$thisArg");
    }
    if (thisArg == null) {
      thisArg = this;
    }
    if (args == null) {
      args = [];
    }
    return Function.apply(_function, [thisArg]..addAll(args));
  }
  @override
  toString() => "JsFunction#${id}";
}
