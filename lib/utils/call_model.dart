import 'package:flutter/material.dart';
import 'package:flutter_video_chat/utils/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallModel extends StatelessWidget {
  const CallModel({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConst.appId,
      appSign: MyConst.appSign,
      userID: MyLogin.userId,
      userName: MyLogin.name,
      callID: callID,

      // Modify your custom configurations here.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()
        ..layout = ZegoLayout.gallery(
          addBorderRadiusAndSpacingBetweenView: false,
        ),
    );
  }
}
