enum DeviceType { mobile, tablet, ultraTablet, desktop, unknown }

enum UserRole { admin, user, guest }

enum OrderStatus {
  pending,
  representativeOnTheWay,
  orderInWay,
  washingStarted,
  delivered,
  cancelled,
}

enum Tabs { home, requests, offers, store, settings }

bool showSearchTextField(Tabs tab) {
  switch (tab) {
    case Tabs.home:
    case Tabs.requests:
    case Tabs.offers:
    case Tabs.store:
      return true;
    case Tabs.settings:
      return false;
  }
}

extension OrderStatusX on OrderStatus {
  String get toApi {
    switch (this) {
      case OrderStatus.pending:
        return "pending";
      case OrderStatus.representativeOnTheWay:
        return "representative_on_the_way";
      case OrderStatus.orderInWay:
        return "order_in_way";
      case OrderStatus.washingStarted:
        return "washing_started";
      case OrderStatus.delivered:
        return "deliveried";
      case OrderStatus.cancelled:
        return "cancelled";
    }
  }

  static OrderStatus fromApi(String value) {
    switch (value) {
      case "pending":
        return OrderStatus.pending;
      case "representative_on_the_way":
        return OrderStatus.representativeOnTheWay;
      case "order_in_way":
        return OrderStatus.orderInWay;
      case "washing_started":
        return OrderStatus.washingStarted;
      case "deliveried":
        return OrderStatus.delivered;
      case "cancelled":
        return OrderStatus.cancelled;
      default:
        return OrderStatus.pending; // fallback
    }
  }
}

enum StoreTabs { list, grid }

enum StoreCategoryTabs {
  all,
  electricalDevices,
  householdTools,
  furnitureEquipment,
  cars,
}
