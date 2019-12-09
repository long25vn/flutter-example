# Tổng hợp tài liệu

## UI, Widget, Catalog

  - [Flutter Examples - Cheat Sheet](http://flutterexamples.com/)
  
  - [Widget cơ bản và thuộc tính](https://flutteropen.gitbook.io/flutter-widgets/)

  - [Flutter By Example](https://flutterbyexample.com/)
  
  - [Simple basic app](https://github.com/nisrulz/flutter-examples)
  
  - [Source app thực tế - Its All Widgets](https://itsallwidgets.com/)
  
  - [Source app thực tế - Its All Widgets](https://itsallwidgets.com/)
  
-----

### Flutter?
Là 1 công cụ cho phép triển khai một ứng dụng "Native Cross-Platform" (IOS, Android) với một ngôn ngữ lập trình và 1 codebase.

### Dart?
Là một ngôn ngữ lập trình tập trung vào việc xây dựng giao diện frontend (web, mobile app), giao diện người dùng (UI).
Flutter sử dụng Dart nhưng hoàn toàn độc lập với Dart, tức là bạn có thể triển khai Web App với Dart.

### Flutter và Dart hoạt động thế nào?
Flutter xây dựng trên Dart, điều đó có nghĩa, Dart mới là ngôn ngữ lập trình thực sự chúng ta sử dụng, flutter chỉ là một tập hợp các công cụ, các tính năng, tiện ích, các widget được triển khai sử dụng Dart.

Flutter chỉ đơn giản biên dịch code Dart cho các nền tảng khác nhau thông qua Flutter SDK

![](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LqVNQWyi1US2l7fPXpG%2F-LrwkfhyplXmFtX7cFS7%2F-Lrwl7-0I4bmXHPTtnIM%2Fchrome_dX7WfAMMEE.png?alt=media&token=12953187-61da-4bbb-a493-dd3b794b6ab9)

![](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LqVNQWyi1US2l7fPXpG%2F-LrwkfhyplXmFtX7cFS7%2F-LrwwsQV5f1epQO5YL_i%2Fchrome_6MFBXV9jWa.png?alt=media&token=257674d6-1517-48ac-91d4-9fb509d117a4)


> # Mọi thứ trong ứng dụng Flutter đều là `Widget`  

### Widget vô hình và hữu hình
  ![](https://camo.githubusercontent.com/9d61a34ff7767b0e9e1772c39da77ce5016b982e/68747470733a2f2f626c6f627363646e2e676974626f6f6b2e636f6d2f76302f622f676974626f6f6b2d32383432372e61707073706f742e636f6d2f6f2f6173736574732532462d4c71564e51577969315553326c3766505870472532462d4c72785f6e5159756c546f69617930474534312532462d4c72785f7172575542735f58336b77726b50542532466368726f6d655f38414554366a4e5950492e706e673f616c743d6d6564696126746f6b656e3d65393561663862642d626436372d346366342d396463302d663932656132306633653138)
  
Widget hữu hình ví dụ như Input, button, text, card , ... những thứ được vẽ trên màn hình, có thể nhìn thấy được ngay trên ứng dụng.

Widget vô hình như row, column, listview ... là những widget mà người dùng không thể nhìn thấy chi tiết hình hài nó trên ứng dụng, nhưng nó giúp tổ chức nội dung các thành phần bên trong nó.

Thông thường widget vô hình sắp xếp, quyết định vị trí, điều khiển việc widget hữu hình sẽ được vẽ ở đâu trên màn hình, nó đóng vai trò vô cùng quan trọng.

Vì không hiển thị trực tiếp, khi sử dụng widget vô hình, chúng ta mặc dù có thể hình dung những widget được sử dụng nhưng không thể biết chính xác, ví dụ như trường hợp sử dụng Column và ListView bên dưới, giao diện hiển thị gần như là tương đương.
  



  
-----

## Nội dung


#### Dart

  - [Just Enough Dart For Flutter](http://thetechnocafe.com/just-enough-dart-for-flutter-tutorial-01-variables-types-and-functions/)

#### State, BuildContext, Stateful & Stateless
  - [https://medium.com/flutter-community/widget-state-buildcontext-inheritedwidget-898d671b7956](https://medium.com/flutter-community/widget-state-buildcontext-inheritedwidget-898d671b7956)
  
  - [Stateful Widget Lifecycle](https://flutterbyexample.com/stateful-widget-lifecycle/)
  
  
  #### Widgets, Elements & RenderObjects
  - [https://medium.com/flutter-community/flutter-what-are-widgets-renderobjects-and-elements-630a57d05208](https://medium.com/flutter-community/flutter-what-are-widgets-renderobjects-and-elements-630a57d05208)
  
  - [https://medium.com/flutter-community/the-layer-cake-widgets-elements-renderobjects-7644c3142401](https://medium.com/flutter-community/the-layer-cake-widgets-elements-renderobjects-7644c3142401)
  
  
## Kiến trúc
  - [Flutter Architecture Samples](https://fluttersamples.com/)
  
  - [Bloc Tutorial](https://bloclibrary.dev/#/gettingstarted)
