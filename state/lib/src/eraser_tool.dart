import 'package:state/src/tool.dart';

class EraserTool implements Tool {
  @override
  void mouseDown() {
    print('Eraser Icon');
  }

  @override
  void mouseUp() {
    print('Erase an object');
  }
}
