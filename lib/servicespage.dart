import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:services/utils/dimensions.dart';
import 'package:services/widgets/bottom_bar_icons.dart';
import 'package:services/widgets/rectCard.dart';
import 'package:services/widgets/round_icons.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 8),
        color: Colors.grey.shade200,
        child: Scaffold(
          backgroundColor: Colors.grey.shade200.withOpacity(0),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Dimensions.height10 * 2, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Services ',
                      style: TextStyle(
                          fontFamily: 'NetflixBold',
                          color: Color(0xFF1B165B),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(Icons.settings_sharp, color: Color(0xFF1B165B)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                height: Dimensions.height100 * 2.3,
                child: Stack(
                  children: [
                    Positioned(
                        top: Dimensions.height100 * 0.08,
                        left: 30,
                        right: 30,
                        child: Container(
                          height: Dimensions.height100 * 1.4,
                          width: Dimensions.width30 * 4.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade300),
                          child: Text(''),
                        )),
                    Positioned(
                        top: Dimensions.height100 * 0.2,
                        left: 8,
                        right: 8,
                        child: Container(
                          height: Dimensions.height100 * 1.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      'assets/Android/Wallet banner2.png'),
                                  fit: BoxFit.cover)),
                          child: Text(''),
                        )),
                    Positioned(
                      top: Dimensions.height10 * 7,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10,
                      child: Container(
                        child: const Text(
                          "Wallet",
                          style: TextStyle(
                              fontFamily: 'NetflixMid',
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      top: Dimensions.height10 * 9,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10,
                      child: const Text(
                        "Balance",
                        style: TextStyle(
                            fontFamily: 'NetflixMid',
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                    Positioned(
                      top: Dimensions.height10 * 13,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10,
                      child: Container(
                        child: const Text(
                          "\$ 40,000.00",
                          style: TextStyle(
                              fontFamily: 'NetflixMid',
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundIcons(
                        imageIcon: 'assets/Android/wallet-add.svg',
                        txt: 'Top up',
                        iconSize: Dimensions.height10 * 3.2,
                        iconColor: Colors.white,
                        backGroundColor: Colors.blue,
                        backGroundColor2: Colors.blueAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      RoundIcons(
                        imageIcon: 'assets/Android/card-send.svg',
                        txt: 'Withdraw',
                        iconSize: Dimensions.height10 * 3.2,
                        iconColor: Colors.white,
                        backGroundColor: Colors.deepOrangeAccent,
                        backGroundColor2: Colors.orange,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      RoundIcons(
                        imageIcon: 'assets/Android/receive.svg',
                        txt: 'Receive',
                        iconSize: Dimensions.height10 * 2.4,
                        iconColor: Colors.white,
                        paddin: 16,
                        backGroundColor: Colors.lightGreen,
                        backGroundColor2: Colors.green,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      RoundIcons(
                        imageIcon: 'assets/Android/clock.svg',
                        txt: 'Transactions',
                        iconSize: Dimensions.height10 * 3.2,
                        iconColor: Colors.white,
                        backGroundColor: Colors.deepPurpleAccent,
                        backGroundColor2: Colors.deepPurple,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Quick Services',
                      style: TextStyle(
                          fontFamily: 'NetflixBold',
                          color: Color(0xFF1B165B),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectCard(
                    imageIcon: 'assets/Android/airtime.svg',
                    txt: 'Airtime',
                    iconSize: Dimensions.height10 * 3.8,
                  ),
                  RectCard(
                    imageIcon: 'assets/Android/dollar-circle.svg',
                    txt: 'Pay Bill',
                    iconSize: Dimensions.height10 * 3.8,
                  ),
                  RectCard(
                    imageIcon: 'assets/Android/convert-card.svg',
                    txt: 'Split Pay',
                    iconSize: Dimensions.height10 * 3.8,
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Refer And Earn',
                  style: TextStyle(
                      fontFamily: 'NetflixBold',
                      color: Color(0xFF1B165B),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: Dimensions.height10 * 0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                height: Dimensions.height100 * 2.1,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 8,
                        right: 8,
                        child: Container(
                          height: Dimensions.height100 * 1.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.blue,
                                  Colors.deepPurpleAccent,
                                  //Colors.orangeAccent,
                                ],
                              ),
                              color: Colors.blue),
                        )),
                    // Positioned( top: Dimensions.height100*0,left: 8,right: 8,
                    //     child:
                    //     Container(height: Dimensions.height100*1.8,
                    //       decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Android/Wallet banner2.png'),fit: BoxFit.cover)),
                    //       child: Text(''),
                    //     )),
                    Positioned(
                      top: Dimensions.height10 * 4,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10,
                      child: Container(
                        child: const Text(
                          "Refer a ",
                          style: TextStyle(
                              fontFamily: 'NetflixMid',
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      top: Dimensions.height10 * 4,
                      left: Dimensions.width10 * 10.5,
                      right: Dimensions.width10,
                      child: Container(
                        child: const Text(
                          "Friend ",
                          style: TextStyle(
                              fontFamily: 'NetflixBold',
                              color: Colors.yellow,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      top: Dimensions.height10 * 6.5,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10,
                      child: Container(
                        child: const Text(
                          "Earn Extra Cash!",
                          style: TextStyle(
                              fontFamily: 'NetflixMid',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      top: Dimensions.height10 * 10,
                      left: Dimensions.width10 * 4,
                      right: Dimensions.width10 * 26,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              fontFamily: 'NetflixMid',
                              color: Color(0xFF1A2D85),
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            height: Dimensions.height10 * 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomIcon(
                  imageIcon: 'assets/Android/messages-3.svg',
                  txt: 'Chat',
                  iconColor: Color(0xFF473EB9),
                ),
                BottomIcon(
                    imageIcon: 'assets/Android/scan 2.svg',
                    txt: 'Scan',
                    iconColor: Color(0xFF9E95C4)),
                BottomIcon(
                  imageIcon: 'assets/Android/Services.svg',
                  txt: 'Services',
                  iconColor: Color(0xFF9E95C4),
                ),
                BottomIcon(
                  imageIcon: 'assets/Android/frame.svg',
                  txt: 'Me',
                  iconColor: Color(0xFF9E95C4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
