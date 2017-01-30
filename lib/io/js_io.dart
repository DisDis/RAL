library platform.io.js;
import 'dart:collection';

part 'js/src/js_function.dart';
part 'js/src/js_array.dart';
part 'js/src/js_object.dart';
part 'js/src/js_property.dart';

const Object _UNDEFINED = const Object();
const bool _isDebug = false;

final JsObject _context = _contextCreate();
JsObject get context => _context;
final JsFunction _OBJECT = new JsFunction.withThis((_) {});

JsObject _contextCreate() {
  var result = new JsObject.internal();
  result["Object"] = _OBJECT;
  result["Object"]["defineProperty"] = new JsFunction.withThis((that, obj, prop,
    descriptor) {
    var getter = descriptor['get'];
    var setter = descriptor['set'];
    obj._obj[prop] = new JsProperty(obj, getter, setter);
  });
  return result;
}
