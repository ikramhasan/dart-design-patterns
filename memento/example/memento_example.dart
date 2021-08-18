import 'package:memento/memento.dart';

void main() {
  var editor = Editor();
  var history = History();

  editor.setContent('a');
  history.push(editor.createState());

  editor.setContent('b');
  history.push(editor.createState());

  editor.setContent('c');
  history.push(editor.createState());

  editor.restore(history.pop());

  print(editor.content);
}
