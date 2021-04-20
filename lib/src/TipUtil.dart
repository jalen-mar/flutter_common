import 'package:fluttertoast/fluttertoast.dart';

import 'package:common/src/ObjectUtil.dart';

class TipUtil {
  static void showToast(String msg, {backgroundColor, textColor}) {
    if (!ObjectUtil.isEmptyString(msg)) {
      Fluttertoast.showToast(msg: "$msg",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: backgroundColor,
          textColor: textColor,
          fontSize: 13.5);
    }
  }
}