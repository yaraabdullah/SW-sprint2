import '/flutter_flow/flutter_flow_util.dart';
import 'confirmation_widget.dart' show ConfirmationWidget;
import 'package:flutter/material.dart';

class ConfirmationModel extends FlutterFlowModel<ConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
