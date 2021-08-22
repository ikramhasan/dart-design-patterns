import 'package:iterator/src/iterator.dart';

part 'list_iterator.dart';

class BrowserHistory {
  final List<String> _urls = [];

  void push(String url) {
    _urls.add(url);
  }

  String pop() {
    _urls.remove(_urls.last);

    return _urls.last;
  }

  Iterator createIterator() {
    return ListIterator(this);
  }
}