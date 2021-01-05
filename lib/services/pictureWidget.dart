import 'package:flutter/cupertino.dart';

class PictureWidget extends StatelessWidget {
  String assetSrc = "";
  PictureWidget(this.assetSrc);
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      new AssetImage("assets/images/visa.png"),
      size: 100.2,
    );
  }
}
