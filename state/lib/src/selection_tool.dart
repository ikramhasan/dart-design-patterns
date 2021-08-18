import 'package:state/src/tool.dart';

class SelectionTool implements Tool {
  @override
  void mouseDown() {
    print('Selection Icon');
  }

  @override
  void mouseUp() {
    print('Draws a dashed rectangle');
  }
}
