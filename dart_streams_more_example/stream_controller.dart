import 'dart:async';

class BurgerStand {
  StreamController _controller = new StreamController();
  Stream get onNewOrder => _controller.stream;
  Cook cook = new Cook();

  void deliverOrderToCook() {
    print("Hoang DUc");
    onNewOrder.listen((newOrder) {
      cook.prepareOrder(newOrder);
    });
  }

  void newOrder(String order) {
    print("goi do an moi");
    _controller.add(order);
  }
}

class Cook {
  void prepareOrder(newOrder) {
    print("dang nau");
    print("preparing $newOrder");
  }
}

main() {
  var burgerStand = new BurgerStand();
  burgerStand.deliverOrderToCook();

  burgerStand.newOrder("Burger");
  burgerStand.newOrder("Fries");
  burgerStand.newOrder("Fries, Animal Style");
  burgerStand.newOrder("Chicken nugs");
}