import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../config/themes/themes.dart';

enum NotificationType {
  portfolioGained,
  transactionSuccess,
  transactionFailed,
  transactionDelay,
}

extension NotificationTypeExt on NotificationType {
  IconData get designatedIcon {
    switch (this) {
      case NotificationType.portfolioGained:
        return IconlyBold.chart;
      default:
        return IconlyBold.tick_square;
    }
  }

  Color get designatedIconColor {
    switch (this) {
      case NotificationType.portfolioGained:
        return AppColor.primary;
      case NotificationType.transactionSuccess:
        return AppColor.primary;
      case NotificationType.transactionDelay:
        return AppColor.warning;
      case NotificationType.transactionFailed:
        return AppColor.danger;
      default:
        return AppColor.gray;
    }
  }

  Color get designatedSecondaryColor {
    switch (this) {
      case NotificationType.portfolioGained:
        return AppColor.greenBubbles;
      case NotificationType.transactionSuccess:
        return AppColor.greenBubbles;
      case NotificationType.transactionDelay:
        return AppColor.yellowChilean;
      case NotificationType.transactionFailed:
        return AppColor.redMisty;
      default:
        return AppColor.gray2;
    }
  }
}

class UserNotification {
  int? id;
  int? userId;
  NotificationType? type;
  String? title;
  String? message;
  DateTime? createdAt;

  // constructor
  UserNotification({
    this.id,
    this.userId,
    this.type,
    this.title,
    this.message,
    this.createdAt,
  });

  //copywith
  UserNotification copyWith({
    int? id,
    int? userId,
    NotificationType? type,
    String? title,
    String? message,
    DateTime? createdAt,
  }) {
    return UserNotification(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
