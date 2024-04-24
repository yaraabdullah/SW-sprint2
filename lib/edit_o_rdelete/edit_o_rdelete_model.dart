import '/flutter_flow/flutter_flow_util.dart';
import 'edit_o_rdelete_widget.dart' show EditORdeleteWidget;
import 'package:flutter/material.dart';

class EditORdeleteModel extends FlutterFlowModel<EditORdeleteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
