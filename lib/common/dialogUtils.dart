import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 封装自定义弹框
class DialogUtils {
  /// 基础弹框
  static alert(
    BuildContext context, {
    String title = "提示",
    String content = "",
    GestureTapCallback? confirm,
    GestureTapCallback? cancle,
    List<Widget>? actions, // 自定义按钮
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              '提示',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            content: Text(content),
            actions: actions ??
                <Widget>[
                  InkWell(
                    onTap: () {
                      if (cancle != null) {
                        cancle();
                      }
                      Navigator.of(context).pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "取消",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (confirm != null) {
                        confirm();
                      }
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "确定",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  )
                ],
          );
        });
  }

  /// 显示普通消息
  static showMessage(String msg,
      {toastLength = Toast.LENGTH_SHORT,
      gravity = ToastGravity.CENTER,
      timeInSecForIosWeb = 1,
      backgroundColor = Colors.grey,
      fontSize = 16.0}) {
    // 先关闭弹框再显示对应弹框
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: backgroundColor,
        fontSize: fontSize);
  }

  /// 显示错误消息
  static showErrorMessage(String msg,
      {toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      fontSize: 16.0}) {
    showMessage(msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: backgroundColor,
        fontSize: fontSize);
  }

  /// 显示警告信息
  static showWaringMessage(String msg,
      {toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.orangeAccent,
      fontSize: 16.0}) {
    showMessage(msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: backgroundColor,
        fontSize: fontSize);
  }

  /// 显示成功消息
  static showSuccessMessage(String msg,
      {toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.greenAccent,
      fontSize: 16.0}) {
    showMessage(msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: backgroundColor,
        fontSize: fontSize);
  }
}
