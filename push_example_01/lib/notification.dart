import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> fcmTest() async {
  var fcmtoken =
      await FirebaseMessaging.instance.getToken(vapidKey: "BCBDXTqHjc8GLlzSGTupvkdzxRHsyvwdNYVaod1UUfOAeg2lvusmkdKGYzdQQ3D3H6KA3npMhHpx3jhtNb6o63E");

  // FCM 새로고침 수신
  FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
    // save token to server
  });

  // 기존에 발급받은 토큰을 삭제
  FirebaseMessaging.instance.deleteToken();
}

// iOS 권한 요청
Future requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings setting = await messaging.requestPermission(
    // 권한 요청 알림 화면을 표시(default true)
    alert: true,
    // 시리를 통해 알림의 내용을 자동으로 읽을 수 있는 권한 요청 (기본값 false)
    announcement: false,
    // 뱃지 권한 요청 (기본값 true)
    badge: true,
    // carPlay 환경에서 알림표시 권한 요청 (기본값 false)
    carPlay: false,
    // 무중단 알림 권한 요청 (기본값 fasle)
    provisional: false,
    // 알림 소리 요청 (기본값 true)
    sound: true,
  );

  // Android 알림 채널 설정
  // Android 버전 8(Api 수준 26) 이상부턴 채널 설정 필수
  var channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // name
    description: 'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  // FCM 포그라운드 수신
  var flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();
}

Future<void> setupInteractedMessage() async {
  RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
}
