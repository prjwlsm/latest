import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/constants/text_constants.dart';
import '../../domain/core/views/app_bar_view.dart';
import '../../domain/core/views/custom_button_view.dart';
import '../../domain/core/views/sign_document_view.dart';
import '../../domain/core/views/termsof_service_view.dart';
import '../../domain/core/views/upload_files_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/app_colors.dart';
import '../../infrastructure/theme/app_text_theme.dart';
import 'controllers/view_checklist_confirm_loi.controller.dart';

class ViewChecklistConfirmLoiScreen
    extends GetView<ViewChecklistConfirmLoiController> {
  const ViewChecklistConfirmLoiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(
          title: TextConstants.completeContractUploadSecurityDeposit),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.79.h,
                      ),
                      SignDocumentView(
                          hedgingText: TextConstants.signTheContractDocument,
                          fileName: 'Contract12345678.pdf',
                          onPressed: () {}),
                      SizedBox(
                        height: 2.25.h,
                      ),
                      UploadFilesView(
                        text: TextConstants.fullDepositPaymentDetails,
                          onPressed: () {}
                      )
                    ],
                  ),
                ),
              ),
              CustomButtonView(
                text: TextConstants.confirm,
                onPressed: () {},
              ),
              SizedBox(
                height: 2.61.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.64.w),
                child: const TermsofServiceView(),
              ),
              SizedBox(
                height: 1.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
