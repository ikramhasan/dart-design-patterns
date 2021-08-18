import 'package:state/src/tool.dart';

class BrushTool implements Tool {
  @override
  void mouseDown() {
    print('Brush Icon');
  }

  @override
  void mouseUp() {
    print('Draws a line');
  }
}
