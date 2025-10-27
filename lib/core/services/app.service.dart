import '../../global_imports.dart';

class AppServices {
  Future<void> initAppServices() async {
    OneSignal.Debug.setLogLevel(OSLogLevel.warn);
    OneSignal.initialize("5a79e9c6-c8c9-4f9b-b327-848f037a4f88");
    OneSignal.Notifications.requestPermission(false);

    Future.wait([ScreenUtil.ensureScreenSize()]);

    // await FcmHelper.initFcm();
    // await NotificationsController.initializeLocalNotifications();
    // await NotificationsController.initializeIsolateReceivePort();
    // NotificationsController.startListeningNotificationEvents();
  }
}
