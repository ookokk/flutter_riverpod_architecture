import 'package:auto_route/auto_route.dart';

extension RouterExtensions on StackRouter{
  void goBackByPageNumber(int pageNumber){
    final name = stack[stack.length - pageNumber].routeData.name;
    popUntil((route) => route.settings.name == name);
  }
}