part of 'browser_history.dart';

class ListIterator implements Iterator<String> {
  ListIterator(this._history);
  int _index = 0;

  final BrowserHistory _history;

  @override
  bool hasNext() {
    return _index < _history._urls.length;
  }

  @override
  void next() {
    _index++;
  }

  @override
  String current() {
    return _history._urls.elementAt(_index);
  }
}
