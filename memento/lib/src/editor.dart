import 'editor_state.dart';

class Editor {
  late String _content;

  void setContent(String content) {
    _content = content;
  }

  String get content => _content;

  /// Creates an [EditorState] state with the content given beforehand.
  EditorState createState() {
    return EditorState(_content);
  }

  /// Restores / Undos to the previous content
  void restore(EditorState state) {
    _content = state.content;
  }
}
