import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../config/themes/themes.dart';

part 'user_notification_addon.dart';

enum NotificationType {
  portfolioGained,
  transactionSuccess,
  transactionFailed,
  transactionDelay,
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
