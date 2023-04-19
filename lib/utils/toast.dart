
/*import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum ToastState { error, success, info }

void removeSnackbar() {
  getIt<GlobalKey<ScaffoldMessengerState>>()
      .currentState
      ?.removeCurrentSnackBar();
}

void showToast(
  String message, {
  String? heading,
  ToastState state = ToastState.info,
  bool isError = false,
  double bottomMargin = 10,
  VoidCallback? setError,
}) {
  removeSnackbar();

  Color borderColor;
  String customHeading;
  String leadingName;

  switch (state) {
    case ToastState.error:
      borderColor = Colors.red;
      customHeading = "Error occured";
      leadingName = "info.json";
      break;
    case ToastState.info:
      borderColor = Colors.orange;
      customHeading = "Attention required";
      leadingName = "error.json";
      break;
    default:
      borderColor = Colors.green;
      customHeading = "Success";
      leadingName = "success.json";
  }

  final SnackBar snackBar = SnackBar(
    content: WillPopScope(
      onWillPop: () async {
        removeSnackbar();
        setError?.call();
        return true;
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ListTile(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          title: Text(
            heading ?? customHeading,
            style: customTextStyle(
                color: borderColor, fontSize: 14, weight: FontWeight.w600),
          ),
          leading: LottieBuilder.asset(assetLottie(leadingName)),
          subtitle: Text(
            message,
            style: customTextStyle(color: Colors.black),
          ),
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    margin: const EdgeInsets.all(0),
    padding: const EdgeInsets.all(0),
    behavior: SnackBarBehavior.floating,
  );

  getIt<GlobalKey<ScaffoldMessengerState>>()
      .currentState
      ?.showSnackBar(snackBar)
      .closed
      .then((value) => setError?.call());
}*/
