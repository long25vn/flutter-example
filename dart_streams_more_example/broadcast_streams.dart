import 'dart:async';

class Cook {
  void prepareOrder(newOrder) {
    print("preparing $newOrder");
  }
}

class Order {}
class Burger extends Order {}
class Fries extends Order {}
class Fruit extends Order {}



class BurgerStand {
  StreamController<Order> _controller = new StreamController.broadcast();
  Cook grillCook = new Cook();
  Cook fryCook = new Cook();
  Cook fruitCook = new Cook();


  Stream get onNewFryOrder =>
      _controller.stream.where((Order order) {
        print("Fries");
        return order is Fries;
      });

  Stream get onNewFruitOrder =>
      _controller.stream.where((Order order) {
        print("Fruit");
        return order is Fruit;
      });

  Stream get onNewBurgerOrder =>
      _controller.stream.where((Order order){
         print("Burger");
        return order is Burger;
      });


  void deliverOrderToCook() {
    print("Chuyen den nguoi nau");
    onNewBurgerOrder.listen((newOrder) {
      grillCook.prepareOrder(newOrder);
    });

    onNewFryOrder.listen((newOrder) {
      fryCook.prepareOrder(newOrder);
    });

    onNewFruitOrder.listen((newOrder) {
      fruitCook.prepareOrder(newOrder);
    });
  }

  void newOrder(Order order) {
    print("Them orrder");
    _controller.add(order);
  }
}

main() {
  var burgerStand = new BurgerStand();
  burgerStand.deliverOrderToCook();

  burgerStand.newOrder(new Burger());
  // burgerStand.newOrder(new Fries());
}