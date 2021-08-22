import 'package:iterator/iterator.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BrowserHistory',
    () {
      late BrowserHistory history;

      setUp(() {
        history = BrowserHistory();
      });

      test(
        'createIterator() should return an iterator instance',
        () {
          var iterator = history.createIterator();

          expect(iterator, isA<Iterator>());
        },
      );

      test(
        'push() should add new element to url list when a valid url is provided in the parameter',
        () {
          var url = 'url';
          history.push(url);

          var iterator = history.createIterator();

          expect(iterator.current(), url);
        },
      );

      test(
        'pop() should remove the last element from the url list when called',
        () {
          history.push('a');
          history.push('b');
          history.push('c');

          var currentElement = history.pop();

          expect(currentElement, 'b');
        },
      );
    },
  );

  group(
    'Iterator',
    () {
      late BrowserHistory history;

      setUp(() {
        history = BrowserHistory();
      });

      test(
        'current() should return the current element in the iterator',
        () {
          var iterator = history.createIterator();

          history.push('a');
          iterator.next();
          history.push('b');
          iterator.next();
          history.push('c');
          iterator.next();
          history.push('d');

          expect(iterator.current(), 'd');
        },
      );

      test(
        'hasNext() should return true when Iterator has 1 or more element after the current index',
        () {
          var iterator = history.createIterator();

          history.push('a');
          history.push('b');
          history.push('c');

          iterator.next();
          iterator.next();

          expect(iterator.hasNext(), true);
        },
      );

      test(
        'hasNext() should return false when Iterator equal or less amount of element after the current index',
        () {
          var iterator = history.createIterator();

          history.push('a');
          history.push('b');

          iterator.next();
          iterator.next();

          expect(iterator.hasNext(), false);
        },
      );
    },
  );
}
