import 'package:get/get.dart';
import 'package:korelectioninfo/union/union_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnionController>(
          () => UnionController(),
    );
  }
}