library platform.interface.package_js;

/// A metadata annotation that indicates that a Library, Class, or member is
/// implemented directly in JavaScript. All external members of a class or
/// library with this annotation implicitly have it as well.
///
/// Specifying [name] customizes the JavaScript name to use. By default the
/// dart name is used. It is not valid to specify a custom [name] for class
/// instance members.
class JS {
  final String name;
  const JS([this.name]);
}

class _Anonymous {
  const _Anonymous();
}

/// A metadata annotation that indicates that a @JS annotated class is
/// structural and does not have a known JavaScript prototype.
///
/// Factory constructors for anonymous JavaScript classes desugar to creating
/// JavaScript object literals with name-value pairs corresponding to the
/// parameter names and values.
const _Anonymous anonymous = const _Anonymous();