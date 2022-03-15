import 'package:flutter/material.dart';
import 'package:colorfilter_generator/addons.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorFilter Example'),
      ),
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.matrix(
            ColorFilterAddons.brightness(0.4),
          ),
          child: Column(
            children: [
              const Text('Some text with filter applied'),
              Image.network('https://example.com/path/to/image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
