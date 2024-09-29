// import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class _NotificationManager{
//   String fcmToken = '';
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   Future<String> getAndSetFcmToken() async {
//     // final newToken = await _firebaseMessaging.getToken() ?? '';
//     // fcmToken = newToken;
//     return "newToken";
//   }

//   Future<void> initNotificationStartListening() async {
//     await _initNotificationChannel();
//     await _initNotificationListeners();
//   }

//   Future<void> _initNotificationChannel() async {
//     const channel = AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       description: 'This channel is used for important notifications.', // description
//       importance: Importance.high,
//     );

//     final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);


//     await _firebaseMessaging.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//   }

//   Future<void> _initNotificationListeners() async {
//     final remoteMessage = await _firebaseMessaging.getInitialMessage();
//     print("INIT GİRDİ!!!");

//     if (remoteMessage != null) {
//       // TODO(lewooz): handle remote message.
//     }

//     // This function listens to the state when you receive notification while the app is in foreground
//     FirebaseMessaging.onMessage.listen((RemoteMessage event) {
//       // TODO(lewooz): handle foreGround event message.
//       print("MESAJ GELDİ: ${event.data.toString()}");
//     });

//     // This function listens to the state when you open the background notification
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print('MESAJ GELDİ: ${message.data.toString()}');
//       // TODO(lewooz): handle background event message.
//     });
//   }

//   Future<void> getPermissionForNotificationOnIos() async {
//     if (Platform.isIOS) {
//       await _firebaseMessaging.requestPermission();
//     }
//   }

// }

// final notificationManagerProvider = Provider((ref) => _NotificationManager());