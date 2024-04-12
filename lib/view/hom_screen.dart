import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quetes_application/constant.dart';
import 'package:quetes_application/quotes.dart';
//import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: Colors.black,
        height: height,
        width: width,
        child:SafeArea(
          child: CarouselSlider.builder(
              itemCount: quotesList.length,
              itemBuilder: (context ,index1,index2){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: DefaultTextStyle(
                        style: kQuetesTextStyle,textAlign: TextAlign.center,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(quotesList[index1][kQuote])
                          ],

                        ),
                      )
                      //Text(quotesList[index1][kQuote],style: kQuetesTextStyle,textAlign: TextAlign.center),
                    ),
                    const SizedBox(height: 20.0,),
                    Text('- ${quotesList[index1][kAuthor]} -',style: kAuthorTextStyle,textAlign:  TextAlign.center,),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * .06,
                              width: width * .15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.green,width: 2)
                              ),
                              child: Center(child: Icon(CupertinoIcons.share,size: 30,color: Colors.white,))),
                          Container(
                              height: height * .06,
                              width: width * .15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.green,width: 2)
                              ),
                              child: Center(child: Icon(CupertinoIcons.heart_fill,size: 30,color: Colors.red,))),
                        ],
                      ),
                    )
                  ],
                );
              },
            options: CarouselOptions(
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, value){
                HapticFeedback.lightImpact();
              }
            ),

          ),
        ),
      )
    );
  }
  // void getImagesFromUnSplash()async{
  //   var url = 'https://api.unsplash.com/search/photos?per_page=30&query=nature&order_by=relevant&client_id=$accessKey';
  //   var uri = Uri.parse(url);
  //   var responce = await http.get(uri);
  //   print(responce.statusCode);
  //   var unSplashData = json.decode(responce.body);
  //   print(unSplashData);
  // }
}
