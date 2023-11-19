import 'package:error_screens/screens/10_connection_lost.dart';
import 'package:error_screens/screens/11_broken_link.dart';
import 'package:error_screens/screens/12_article_not_found.dart';
import 'package:error_screens/screens/13_no_space.dart';
import 'package:error_screens/screens/14_no_result_found.dart';
import 'package:error_screens/screens/15_payment_failed.dart';
import 'package:error_screens/screens/16_time_error.dart';
import 'package:error_screens/screens/17_location_error.dart';
import 'package:error_screens/screens/18_router_offline.dart';
import 'package:error_screens/screens/19_connection_failed.dart';
import 'package:error_screens/screens/1_no_connection.dart';
import 'package:error_screens/screens/20_no_file.dart';
import 'package:error_screens/screens/21_camera_access.dart';
import 'package:error_screens/screens/2_404_error.dart';
import 'package:error_screens/screens/3_something_went_wrong.dart';
import 'package:error_screens/screens/4_file_not_found.dart';
import 'package:error_screens/screens/5_something_wrong.dart';
import 'package:error_screens/screens/6_error.dart';
import 'package:error_screens/screens/7_error_2.dart';
import 'package:error_screens/screens/8_404_error_2.dart';
import 'package:error_screens/screens/9_location_access.dart';
import 'package:flutter/material.dart';

List<Widget> screenList = [
  const NoConnectionScreen(),
  const Error404Screen(),
  const Error404Screen2(),
  const SomethingWentWrongScreen(),
  const FileNotFoundScreen(),
  const SomethingWrongScreen(),
  const ErrorScreen(),
  const Error2Screen(),
  const LocationAccessScreen(),
  const ConnectionLostScreen(),
  const BrokenLinkScreen(),
  const ArticleNotFoundScreen(),
  const NoSpaceScreen(),
  const NoResultFoundScreen(),
  const PaymentFailedScreen(),
  const TimeErrorScreen(),
  const LocationErrorScreen(),
  const RouterOfflineScreen(),
  const ConnectionFailedScreen(),
  const NoFileScreen(),
  const CameraAccessScreen(),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Flutter Error Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Swipe to check the next Screen
      home: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}
