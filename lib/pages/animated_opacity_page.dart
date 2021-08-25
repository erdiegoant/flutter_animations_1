import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool _isFaded = false;
  double _opacity = 1.0;

  void _toggleLogo() {
    setState(() {
      _opacity = !_isFaded ? 0 : 1.0;
      _isFaded = !_isFaded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 200),
            ),
            ElevatedButton(
              child: Text(_isFaded ? 'Show Logo' : 'Fade Logo'),
              onPressed: _toggleLogo,
            ),
          ],
        ),
      ),
    );
  }
}
