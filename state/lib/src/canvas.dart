import 'package:state/src/tool.dart';

class Canvas {
  late Tool _currentTool;

  void setCurrentTool(Tool tool) {
    _currentTool = tool;
  }

  Tool get currentTool => _currentTool;

  void mouseDown() {
    _currentTool.mouseDown();
  }

  void mouseUp() {
    _currentTool.mouseUp();
  }
}
