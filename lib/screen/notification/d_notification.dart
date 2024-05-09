import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

import 'vo/vo_ttoss_notification.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;
  NotificationDialog(this.notifications, {super.key});

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notifications.map(
            (e) => NotificationItemWidget(
              notification: e,
              onTap: () => widget.hide(),
            ),
          ),
        ],
      ),
    );
  }
}
