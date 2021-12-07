part of 'user_notification.dart';

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