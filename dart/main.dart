import 'dart:html';
import 'dart:async';
import 'Controller.dart';

void main() {
   Controller controller = new Controller();
   new Timer.periodic(const Duration(seconds: 1), controller.periodic);
}
