import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../modules/livrer/assigne/controllers/assigne_controller.dart';

class ScannerCode extends StatelessWidget {
  var controller;
  ScannerCode(this.controller);
 // ScannerCode._();
  // AssigneController controller = Get.find();
  MobileScannerController cameraController = MobileScannerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Mobile Scanner'),
        //   actions: [
        //     IconButton(
        //       color: Colors.white,
        //       icon: ValueListenableBuilder(
        //         valueListenable: cameraController.torchState,
        //         builder: (context, state, child) {
        //           switch (state as TorchState) {
        //             case TorchState.off:
        //               return const Icon(Icons.flash_off, color: Colors.grey);
        //             case TorchState.on:
        //               return const Icon(Icons.flash_on, color: Colors.yellow);
        //           }
        //         },
        //       ),
        //       iconSize: 32.0,
        //       onPressed: () => cameraController.toggleTorch(),
        //     ),
        //     IconButton(
        //       color: Colors.white,
        //       icon: ValueListenableBuilder(
        //         valueListenable: cameraController.cameraFacingState,
        //         builder: (context, state, child) {
        //           switch (state as CameraFacing) {
        //             case CameraFacing.front:
        //               return const Icon(Icons.camera_front);
        //             case CameraFacing.back:
        //               return const Icon(Icons.camera_rear);
        //           }
        //         },
        //       ),
        //       iconSize: 32.0,
        //       onPressed: () => cameraController.switchCamera(),
        //     ),
        //   ],
        // ),
        body: Stack(
      children: [
         MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: (barcode, args) async {
              if (barcode.rawValue == null) {
                debugPrint('Failed to scan Barcode');
              } else {
                final String code = barcode.rawValue!;
                controller.addReferenceColi(code);
                
                debugPrint('Barcode found! $code');
              }
            },
         
        ),
        // Positioned(
        //         bottom: 1,
        //     left: 50.w,
        //     child:
        //               Row(
        //                 children: [
        //                   IconButton(
        //                     color: Colors.black,
        //                     icon: ValueListenableBuilder(
        //                       valueListenable: cameraController.torchState,
        //                       builder: (context, state, child) {
        //                         switch (state as TorchState) {
        //                           case TorchState.off:
        //                             return const Icon(Icons.flash_off, color: Colors.grey);
        //                           case TorchState.on:
        //                             return const Icon(Icons.flash_on, color: Colors.yellow);
        //                         }
        //                       },
        //                     ),
        //                     iconSize: 32.0,
        //                     onPressed: () => cameraController.toggleTorch(),
        //                   ),
        //                   IconButton(
        //                     color: Colors.white,
        //                     icon: ValueListenableBuilder(
        //                       valueListenable: cameraController.cameraFacingState,
        //                       builder: (context, state, child) {
        //                         switch (state as CameraFacing) {
        //                           case CameraFacing.front:
        //                             return const Icon(Icons.camera_front);
        //                           case CameraFacing.back:
        //                             return const Icon(Icons.camera_rear);
        //                         }
        //                       },
        //                     ),
        //                     iconSize: 32.0,
        //                     onPressed: () => cameraController.switchCamera(),
        //                   ),
        //                 ],
        //               )
        //
        //
        // )
      ],
    ));
  }
}
