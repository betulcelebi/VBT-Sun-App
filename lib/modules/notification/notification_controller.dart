import 'package:get/get.dart';

import '../../models/notifications_model.dart';
import '../../shared/services/services.dart';

class NotificationController extends GetxController {
  Services servis = Services();
  NotificationResponse? notificationResponse = NotificationResponse();

  @override
  void onInit() {
    getNotification();
    super.onInit();
  }

  getNotification() async {
    notificationResponse = await servis.getNotifications();
    update();
  }
}
