abstract class Iterator<T> {
  /// Returns true if [Iterator] has 1 or more element after the current index
  bool hasNext();

  /// Returns the current element from the [Iterator]
  T current();

  /// Traverses the Iterator
  void next();
}
