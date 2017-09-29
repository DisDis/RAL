part of platform.io.js;

class JsObject {
  Map<String, dynamic> _obj = {};
  JsFunction _constructor;
  static int _count = 0;
  final int id = _count++;
  @override
  toString() => "JsObject#${id}";
  JsObject.internal();

  /**
   * Constructs a new JavaScript object from [constructor] and returns a proxy
   * to it.
   */
  factory JsObject(JsFunction constructor, [List arguments]) =>
    _create(constructor, arguments);

  static JsObject _create(JsFunction constructor, arguments) {
    var result = new JsObject.internal().._constructor = constructor;
    result._obj["constructor"] = constructor;
    result._obj["__proto__"] = constructor["prototype"];
    constructor.apply(arguments, thisArg: result);
    return result;
  }

  JsObject get _prototype => _obj["__proto__"];

  /**
   * Constructs a [JsObject] that proxies a native Dart object; _for expert use
   * only_.
   *
   * Use this constructor only if you wish to get access to JavaScript
   * properties attached to a browser host object, such as a Node or Blob, that
   * is normally automatically converted into a native Dart object.
   *
   * An exception will be thrown if [object] either is `null` or has the type
   * `bool`, `num`, or `String`.
   */
  factory JsObject.fromBrowserObject(object) {
    //FIXME Need to implement this
    /*if (object is num || object is String || object is bool || object == null) {
      throw new ArgumentError("object cannot be a num, string, bool, or null");
    }
    return _fromBrowserObject(object);*/
    throw new UnimplementedError();
  }

  /**
   * Recursively converts a JSON-like collection of Dart objects to a
   * collection of JavaScript objects and returns a [JsObject] proxy to it.
   *
   * [object] must be a [Map] or [Iterable], the contents of which are also
   * converted. Maps and Iterables are copied to a new JavaScript object.
   * Primitives and other transferrable values are directly converted to their
   * JavaScript type, and all other objects are proxied.
   */
  factory JsObject.jsify(object) {
    if ((object is! Map) && (object is! Iterable)) {
      throw new ArgumentError("object must be a Map or Iterable");
    }
    if (object is Map) {
      return new JsObject.internal().._obj = new Map.from(object);
    }

    return new JsArray.internal(new List.from(object));
  }

  operator [](property) {
    if (_isDebug) {
      print("$this get['$property']");
    }
    var value = null;
    if (_obj.containsKey(property)) {
      value = _obj[property];
    } else {
      value = _getPrototypeValue(property);
    }
    if (value is JsProperty) {
      var propertyO = value;
      if (propertyO.getter != null) {
        return propertyO.getter.apply(null, thisArg: this);
      }
      return null;
    }
    return value == _UNDEFINED ? null : value;
  }

  _getPrototypeValue(key) {
    var result;
    var prototype = _prototype;
    if (prototype != null) {
      result = prototype._obj[key];
      if (result == null) {
        return prototype._getPrototypeValue(key);
      }
    }

    if (result == null) {
      return _UNDEFINED;
    } else {
      return result;
    }
  }

  operator []=(property, value) {
    if (_isDebug) {
      print("$this set['$property'] = '$value'");
    }
    var current = null;
    if (_obj.containsKey(property)) {
      current = _obj[property];
    } else {
      current = _getPrototypeValue(property);
    }
    if (current is JsProperty) {
      var property = current;
      if (property.setter != null) {
        property.setter.apply([value], thisArg: this);
      }
    } else {
      _obj[property] = value;
    }
  }

  callMethod(String method, [List args]) {
    if (_isDebug) {
      print("$this call-> '$method' args:$args");
    }
    return (this[method] as JsFunction).apply(args, thisArg: this);
  }

  void deleteProperty(String property) => _obj.remove(property);

  bool hasProperty(String property) => _obj.containsKey(property);

  bool instanceof(JsFunction type) {
    if (type == null) {
      return false;
    }
    if (_constructor == type) {
      return true;
    }
    JsObject start = _prototype;
    while (start != null) {
      if (start._constructor == type) {
        return true;
      }
      start = start._prototype;
    }
    return false;
  }
}
