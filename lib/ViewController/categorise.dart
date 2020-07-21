import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Categorise extends StatefulWidget {
  @override
  _CategoriseState createState() => _CategoriseState();
}

class _CategoriseState extends State<Categorise> {

  final List<String> imgList = [
'https://bellanewlive.blob.core.windows.net/upload/0000685_EmeraldGreen.jpeg',
    'https://bellanewlive.blob.core.windows.net/upload/0000686_SilkyGold.jpeg',
    'https://bellanewlive.blob.core.windows.net/upload/0000688_SilkyGreen.jpeg',
    'https://bellanewlive.blob.core.windows.net/upload/0000690_WildHoney.jpeg',
    'https://bellanewlive.blob.core.windows.net/upload/0000691_GrayOlive.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorise'),
      ),
      body: SafeArea(
          top: false,
          left: false,
          right: false,
          child: Container(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 8),
              children: List.generate(6, (index) {
                return Container(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 180,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: imgList[index],
                              placeholder: (context, url) => Center(
                                  child: CircularProgressIndicator()
                              ),
                              errorWidget: (context, url, error) => new Icon(Icons.error),
                            ),
                          ),
                          ListTile(
                              title: Text(
                                'Two Gold Rings',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
