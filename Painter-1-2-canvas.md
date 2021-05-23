# Painter-1-2-canvas

Canvas insert images
```dart
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:typed_data';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ui.Image image;
  bool isImageloaded = false;
  void initState() {
    super.initState();
    init();
  }

  Future <Null> init() async {
    final ByteData data = await rootBundle.load('images/lake.jpg');
    image = await loadImage(new Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(List<int> img) async {
    final Completer<ui.Image> completer = new Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        isImageloaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }

  Widget _buildImage() {
    if (this.isImageloaded) {
      return new CustomPaint(
          painter: new ImageEditor(image: image),
        );
    } else {
      return new Center(child: new Text('loading'));
    }
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: _buildImage(),
      )
    );
  }
}

class ImageEditor extends CustomPainter {
  ImageEditor({
    this.image,
  });

  ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    Future<ByteData> data = image.toByteData();
    canvas.drawImage(image, new Offset(0.0, 0.0), new Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}
```

Canvas insert images with clip
```dart
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:typed_data';
import 'dart:math' as math;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CustomImageCanvas(title: 'Flutter Demo Home Page'),
    );
  }
}

class CustomImageCanvas extends StatefulWidget {
  CustomImageCanvas({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomImageCanvasState createState() => _CustomImageCanvasState();
}

class _CustomImageCanvasState extends State<CustomImageCanvas> {
  ui.Image image;
  bool isImageloaded = false;
  void initState() {
    super.initState();
    init();
  }

  Future<Null> init() async {
    final ByteData data = await rootBundle.load('images/lake.jpg');
    image = await loadImage(Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(List<int> img) async {
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        isImageloaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }

  Widget _buildImage() {
    if (this.isImageloaded) {
      return CustomPaint(
        painter: PngImagePainter(image: image),
      );
    } else {
      return Center(child: Text('loading'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: _buildImage(),
        ));
  }
}

class PngImagePainter extends CustomPainter {
  PngImagePainter({
    this.image,
  });

  ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    _drawCanvas(size, canvas);
  }

  Canvas _drawCanvas(Size size, Canvas canvas) {
    final center = Offset(150, 50);
    final radius = math.min(size.width, size.height) / 8;

    // The circle should be paint before or it will be hidden by the path
    Paint paintCircle = Paint()..color = Colors.black;
    Paint paintBorder = Paint()
      ..color = Colors.white
      ..strokeWidth = size.width / 36
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paintCircle);
    canvas.drawCircle(center, radius, paintBorder);

    double drawImageWidth = 0;
    var drawImageHeight = -size.height * 0.8;

    Path path = Path()
      ..addOval(Rect.fromLTWH(drawImageWidth, drawImageHeight, 300, 300));
      // image.width.toDouble(), image.height.toDouble()

    canvas.clipPath(path);

    canvas.drawImage(image, Offset(drawImageWidth, drawImageHeight), Paint());
    return canvas;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
```

學習資源

- [How to crop circular(or Square or Hexagon ) area from canvas in Flutter](https://stackoverflow.com/questions/59434412/how-to-crop-circularor-square-or-hexagon-area-from-canvas-in-flutter)
- [flutter image drawing in canvas](https://gist.github.com/netsmertia/9c588f23391c781fa1eb791f0dce0768)
