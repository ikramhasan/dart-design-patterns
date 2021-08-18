import 'package:memento/memento.dart';
import 'package:test/test.dart';

void main() {
  group('Editor', () {
    late Editor editor;
    late History history;

    setUp(() {
      editor = Editor();
      history = History();
    });

    test(
      'should set content when a valid content is given',
      () {
        editor.setContent('a');
        expect(editor.content, 'a');
      },
    );

    test(
      'should be able to undo content when two or more states are available',
      () {
        editor.setContent('a');
        history.push(editor.createState());

        editor.setContent('b');
        history.push(editor.createState());

        editor.restore(history.pop());

        final restoredContent = editor.content;

        expect(restoredContent, 'a');
      },
    );

    test(
      'should be return the only content when only one content is available',
      () {
        editor.setContent('a');
        history.push(editor.createState());

        editor.restore(history.pop());

        final restoredContent = editor.content;

        expect(restoredContent, 'a');
      },
    );
  });
}
