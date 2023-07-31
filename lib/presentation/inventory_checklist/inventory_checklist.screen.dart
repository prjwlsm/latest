import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/inventory_checklist.controller.dart';

class InventoryChecklistScreen extends GetView<InventoryChecklistController> {
  const InventoryChecklistScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InventoryChecklistScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InventoryChecklistScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
