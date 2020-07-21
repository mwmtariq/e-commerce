import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scaffold/Helper/Constants.dart';
import 'package:flutter_scaffold/models/SliderModel.dart';
import 'package:http/http.dart';

import 'drawer.dart';
import 'slider.dart';

 class Home extends StatefulWidget {
  @override
  _HomeState createState() =>

    _HomeState();

}

class _HomeState extends State<Home> {

  final List<String> imgList = [
   'https://bellatest.blob.core.windows.net/upload/0000588_silky-gray_415.jpeg',
    'https://bellatest.blob.core.windows.net/upload/0000542_cinnamon-brown_415.png',
    'https://bellatest.blob.core.windows.net/upload/0000559_hazel-honey_415.png',
    'https://bellatest.blob.core.windows.net/upload/0000561_platinum-grey_415.png',
    'https://bellatest.blob.core.windows.net/upload/0000381_natural-cool-gray_415.png',];

  final List<String> titleMain = [
    'Silky Gray',
    'Cinnamon Brown',
    'Almond Brown',
    'Hazel Honey',
    'Platinum Grey',];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: CustomScrollView(
            // Add the app bar and list of items as slivers in the next steps.
            slivers: <Widget>[
              SliverAppBar(
                // Provide a standard title.
                // title: Text('asdas'),
                // pinned: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {},
                  )
                ],
                // Allows the user to reveal the app bar if they begin scrolling
                // back up the list of items.
                // floating: true,
                // Display a placeholder widget to visualize the shrinking size.
                flexibleSpace: HomeSlider(),
                // Make the initial height of the SliverAppBar larger than normal.
                expandedHeight: 300,
              ),
              SliverList(
                // Use a delegate to build items as they're scrolled on screen.
                delegate: SliverChildBuilderDelegate(
                  // The builder function returns a ListTile with a title that
                  // displays the index of the current item.
                  (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: 14.0, left: 8.0, right: 8.0),
                        child: Text(
                            'Best Selling Products',
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        height: 240.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: imgList.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: 140.0,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/products',
                                            arguments: i);
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 160,
                                            child: Hero(
                                              tag: '$i',
                                              child: CachedNetworkImage(
                                                fit: BoxFit.cover,
                                                imageUrl: i,
                                                placeholder: (context, url) =>
                                                    Center(
                                                        child:
                                                            CircularProgressIndicator()),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        new Icon(Icons.error),
                                              ),
                                            ),
                                          ),
                                          ListTile(

                                            title: Text(
                                              titleMain[index],
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            subtitle: Text('\$200',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/banner-1.png'),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, left: 8.0, right: 8.0),
                            child: Text('Shop By Category',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 8.0, left: 8.0),
                            child: RaisedButton(
                                color: Theme.of(context).primaryColor,
                                child: Text('View All',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/categorise');
                                }),
                          )
                        ],
                      ),
                      Container(
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          padding: EdgeInsets.only(
                              top: 8, left: 6, right: 6, bottom: 12),
                          children: List.generate(4, (index) {
                            return Container(
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () {
                                    print('Card tapped.');
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    2) -
                                                70,
                                        width: double.infinity,
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl: imgList[index],
                                          placeholder: (context, url) => Center(
                                              child:
                                                  CircularProgressIndicator()),
                                          errorWidget: (context, url, error) =>
                                              new Icon(Icons.error),
                                        ),
                                      ),
                                      ListTile(
                                          title: Text(
                                        'Two Gold Rings',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 6.0, left: 8.0, right: 8.0, bottom: 10),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/banner-2.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Builds 1000 ListTiles
                  childCount: 1,
                ),
              )
            ]),
      ),
    );
  }

}
SliderModel products;
Future<SliderModel> getProductList() async {

  if (products == null) {
    Response response;
    response = await get("${HomeConstant.getBannerUrl}",headers: Constants.header);
    int statusCode = response.statusCode;
    final body = json.decode(response.body);
    if (statusCode == 200) {
      products = SliderModel.fromJson(body);

      return products;
    } else {
      return products = SliderModel();
    }
  } else {
    return products;
  }
}