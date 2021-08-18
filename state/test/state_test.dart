import 'package:state/state.dart';
import 'package:test/test.dart';

void main() {
  late Canvas canvas;
  late SelectionTool selectionTool;
  late EraserTool eraserTool;
  late BrushTool brushTool;

  setUp(() {
    canvas = Canvas();
    selectionTool = SelectionTool();
    eraserTool = EraserTool();
    brushTool = BrushTool();
  });

  group('Canvas', () {
    test(
      'should have a tool of type SelectionTool when stateCurrentTool is called with a SelectionTool',
      () {
        canvas.setCurrentTool(selectionTool);

        expect(canvas.currentTool, isA<SelectionTool>());
      },
    );

    test(
      'should have a tool of type EraserTool when stateCurrentTool is called with a EraserTool',
      () {
        canvas.setCurrentTool(eraserTool);

        expect(canvas.currentTool, isA<EraserTool>());
      },
    );
    test(
      'should have a tool of type BrushTool when stateCurrentTool is called with a BrushTool',
      () {
        canvas.setCurrentTool(brushTool);

        expect(canvas.currentTool, isA<BrushTool>());
      },
    );
  });

  group(
    'mouseDown',
    () {
      test(
        'should print \'Selection Icon\' when current tool is SelectionTool',
        () {
          canvas.setCurrentTool(selectionTool);

          expect(() {
            canvas.mouseDown();
          }, prints('Selection Icon\n'));
        },
      );

      test(
        'should print \'Eraser Icon\' when current tool is EraserTool',
        () {
          canvas.setCurrentTool(eraserTool);

          expect(() {
            canvas.mouseDown();
          }, prints('Eraser Icon\n'));
        },
      );

      test(
        'should print \'Brush Icon\' when current tool is BrushTool',
        () {
          canvas.setCurrentTool(brushTool);

          expect(() {
            canvas.mouseDown();
          }, prints('Brush Icon\n'));
        },
      );
    },
  );

  group(
    'mouseUp',
    () {
      test(
        'should print \'Draws a dashed rectangle\' when current tool is SelectionTool',
        () {
          canvas.setCurrentTool(selectionTool);

          expect(() {
            canvas.mouseUp();
          }, prints('Draws a dashed rectangle\n'));
        },
      );

      test(
        'should print \'Erase an object\' when current tool is EraserTool',
        () {
          canvas.setCurrentTool(eraserTool);

          expect(() {
            canvas.mouseUp();
          }, prints('Erase an object\n'));
        },
      );

      test(
        'should print \'Draws a line\' when current tool is BrushTool',
        () {
          canvas.setCurrentTool(brushTool);

          expect(() {
            canvas.mouseUp();
          }, prints('Draws a line\n'));
        },
      );
    },
  );
}
