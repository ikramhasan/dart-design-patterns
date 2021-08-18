import 'editor_state.dart';

class History {
  final List<EditorState> states = [];

  /// Stores the given [EditorState] in a list.
  void push(EditorState state) {
    states.add(state);
  }

  /// Removes the last stored state from the list of [EditorState]s
  EditorState pop() {
    if (states.length >= 2) {
      final lastState = states.last;
      states.remove(lastState);
    }

    return states.last;
  }
}
