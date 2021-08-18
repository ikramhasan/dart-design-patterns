import 'package:state/state.dart';

void main() {
  var canvas = Canvas();

  canvas.setCurrentTool(SelectionTool());
  canvas.mouseDown();
  canvas.mouseUp();

  canvas.setCurrentTool(BrushTool());
  canvas.mouseDown();
  canvas.mouseUp();

  canvas.setCurrentTool(EraserTool());
  canvas.mouseDown();
  canvas.mouseUp();
}
