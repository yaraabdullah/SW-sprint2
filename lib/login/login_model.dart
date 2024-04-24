import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for inputPass widget.
  FocusNode? inputPassFocusNode;
  TextEditingController? inputPassTextController;
  late bool inputPassVisibility;
  String? Function(BuildContext, String?)? inputPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputPassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    inputPassFocusNode?.dispose();
    inputPassTextController?.dispose();
  }
}
