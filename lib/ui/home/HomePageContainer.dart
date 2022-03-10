import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kcmit/ui/home/ChipPages.dart';

class HomePageContainer extends StatefulWidget {
  const HomePageContainer({ Key? key }) : super(key: key);

  @override
  _HomePageContainerState createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {

  final List<String> _images = [
    'lib/assets/home/one.jpg',
    'lib/assets/home/two.jpg',
    'lib/assets/home/three.jpg',
    'lib/assets/home/four.jpg',
    'lib/assets/home/five.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: _images
                  .map((item) => Container(
                    child: Center(
                      child:
                          Image.asset(
                            item, 
                            fit: BoxFit.cover, 
                            width: 1000,
                            height: 500,
                          )),
                ))
                .toList(),
              ),

              ChipPages(),
            ],
          ),
        ),
      ],
    );
  }
}