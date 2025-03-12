import 'package:flutter/material.dart';

class ImageAndIconRoute extends StatelessWidget{
  const ImageAndIconRoute({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var img = AssetImage("images/avatar.png");

    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
                  [
                    Image(image: AssetImage("images/avatar.png"), width: 100),
                    Image.asset("images/avatar.png", width: 100),
                    Image(
                      image: NetworkImage(
                        "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                      ),
                      width: 100,
                    ),
                    Image.network(
                      "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                      width: 100,
                    ),
                    Image(image: img, height: 50, width: 100, fit: BoxFit.fill),
                    Image(
                      image: img,
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                    Image(
                      image: img,
                      height: 100,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: img,
                      height: 100,
                      width: 50,
                      fit: BoxFit.fitWidth,
                    ),
                    Image(
                      image: img,
                      height: 100,
                      width: 50,
                      fit: BoxFit.fitHeight,
                    ),
                    Image(
                      image: img,
                      height: 100,
                      width: 50,
                      fit: BoxFit.scaleDown,
                    ),
                    Image(image: img, height: 50, width: 100, fit: BoxFit.none),
                    Image(
                      image: img,
                      width: 100,
                      color: Colors.blue,
                      colorBlendMode: BlendMode.difference,
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: img,
                      width: 100,
                      height: 200,
                      repeat: ImageRepeat.repeatY,
                    ),
                  ].map((e) {
                    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: SizedBox(width: 100, child: e),
                        ),
                      ],
                    );
                  }).toList(),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}