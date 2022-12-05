import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_example_01/firebase_options.dart';

import 'home.dart';

// FCM 초기화 및 백그라운드 메세지 수신
Future<void> fcmSetting(RemoteMessage message) async {
  // firebase core 기능 사용을 위한 필수 initializing
  await Firebase.initializeApp();

  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    carPlay: true,
    criticalAlert: true,
    provisional: true,
    sound: true,
  );

  // forground에서 푸시 알림 표시를 위한 중요도 설정
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // name
    description: 'This channel is used for important notifications.', // discriptsion
    importance: Importance.max,
  );

  // forground에서의 푸시 알림 표시를 위한 local notifications 설정
  final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();
  await FlutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await flutterLocalNotificationPlugin.initialize(
      InitializationSettings(android: AndroidInitializationSettings('@mipmap/launcher_icon'), iOS: IOSInitializationSettings()),
      onSelectNotification: (String? payload) async {});

  // forground 푸시 알림 핸들링
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging.onBackgroundMessage(fcmSetting);

  runApp(const MyApp());

  // // 토큰 받아오기
  // var fcmtoken = await FirebaseMessaging.instance.getToken(
  //   vapidKey: "BCBDXTqHjc8GLlzSGTupvkdzxRHsyvwdNYVaod1UUfOAeg2lvusmkdKGYzdQQ3D3H6KA3npMhHpx3jhtNb6o63E",
  // );

  // // FCM 새로고침 수신
  // FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
  //   // save token to server
  // });

  // // 기존에 발급받은 토큰을 삭제
  // FirebaseMessaging.instance.deleteToken();

  // // 메시징 서비스 기본 객체 생성
  // FirebaseMessaging messaging = FirebaseMessaging.instance;

  // // iOS 권한 요청
  // NotificationSettings setting = await messaging.requestPermission(
  //   // 권한 요청 알림 화면을 표시(default true)
  //   alert: true,
  //   // 시리를 통해 알림의 내용을 자동으로 읽을 수 있는 권한 요청 (기본값 false)
  //   announcement: false,
  //   // 뱃지 권한 요청 (기본값 true)
  //   badge: true,
  //   // carPlay 환경에서 알림표시 권한 요청 (기본값 false)
  //   carPlay: false,
  //   // 무중단 알림 권한 요청 (기본값 fasle)
  //   provisional: false,
  //   // 알림 소리 요청 (기본값 true)
  //   sound: true,
  // );

  // // Android 알림 채널 설정
  // // Android 버전 8(Api 수준 26) 이상부턴 채널 설정 필수
  // var channel = const AndroidNotificationChannel(
  //   'high_importance_channel', // id
  //   'High Importance Notifications', // name
  //   description: 'This channel is used for important notifications.', // description
  //   importance: Importance.high,
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
