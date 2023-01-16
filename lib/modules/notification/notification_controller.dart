import 'package:get/get.dart';

import '../../models/notifications_model.dart';
import '../../models/read_push_message_model.dart';
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

  getReadPushMessage(int? id) async {
    ReadPushMessageResponse readPushMessageResponse = ReadPushMessageResponse();
    readPushMessageResponse = await servis.getReadPushMessage(id!);
    if (readPushMessageResponse.data == true) {
      getNotification();
    }
  }

  deletePushMessage(int? id) async {
    ReadPushMessageResponse readPushMessageResponse = ReadPushMessageResponse();
    readPushMessageResponse = await servis.deletePushMessage(id!);
    getNotification();
  }

  deleteBulkPushMessages(int allOrReaded) async {
    ReadPushMessageResponse readPushMessageResponse = ReadPushMessageResponse();
    readPushMessageResponse = await servis.deleteBulkPushMessages(allOrReaded);
    getNotification();
  }
}
