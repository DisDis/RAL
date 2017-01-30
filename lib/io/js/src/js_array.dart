part of platform.io.js;

class JsArray<E> extends JsObject with ListMixin<E> {
  List<E> _list;
  JsArray.internal([List<E> list])
    : super.internal(){
    if (list == null){
     _list = new List<E>();
    }
  }

  factory JsArray.from(Iterable<E> other) =>
    new JsArray.internal(new List.from(other));

  _checkIndex(int index, {bool insert: false}) {
    int length = insert ? this.length + 1 : this.length;
    if (index is int && (index < 0 || index >= length)) {
      throw new RangeError.range(index, 0, length);
    }
  }

  _checkRange(int start, int end) {
    int cachedLength = this.length;
    if (start < 0 || start > cachedLength) {
      throw new RangeError.range(start, 0, cachedLength);
    }
    if (end < start || end > cachedLength) {
      throw new RangeError.range(end, start, cachedLength);
    }
  }

  // Methods required by ListMixin

  E operator [](index) {
    if (index is int) {
      _checkIndex(index);
    }
    return super[index];
  }

  void operator []=(index, value) {
    if (index is int) {
      _checkIndex(index);
    }
    super[index] = value;
  }

  int get length => _list.length;

  void set length(int length) {
    _list.length = length;
  }

  // Methods overriden for better performance

  void add(E value) {
    //callMethod('push', [value]);
    _list.add(value);
  }

  void addAll(Iterable<E> iterable) {
    // TODO(jacobr): this can be optimized slightly.
    //callMethod('push', new List.from(iterable));
    _list.addAll(iterable);
  }

  void insert(int index, E element) {
    _checkIndex(index, insert: true);
    //callMethod('splice', [index, 0, element]);
    _list.insert(index, element);
  }

  E removeAt(int index) {
    _checkIndex(index);
    return _list.removeAt(index); //callMethod('splice', [index, 1])[0];
  }

  E removeLast() {
    if (length == 0) throw new RangeError(-1);
    return _list.removeLast(); //callMethod('pop');
  }

  void removeRange(int start, int end) {
    _checkRange(start, end);
    //callMethod('splice', [start, end - start]);
    _list.removeRange(start, end);
  }

  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    _checkRange(start, end);
    int length = end - start;
    if (length == 0) return;
    if (skipCount < 0) throw new ArgumentError(skipCount);
    //var args = [start, length]..addAll(iterable.skip(skipCount).take(length));
    //callMethod('splice', args);
    _list.setRange(start, end, iterable, skipCount);
  }

  void sort([int compare(E a, E b)]) {
    //callMethod('sort', [compare]);
    _list.sort(compare);
  }
  @override
  toString() => "JsArray#${id}";
}
