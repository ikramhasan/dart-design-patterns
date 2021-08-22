import 'package:iterator/iterator.dart';

void main() {
  var browserHistory = BrowserHistory();

  browserHistory.push('a');
  browserHistory.push('b');
  browserHistory.push('c');

  var iterator = browserHistory.createIterator();

  while (iterator.hasNext()) {
    var url = iterator.current();
    print(url);
    iterator.next();
  }
}
