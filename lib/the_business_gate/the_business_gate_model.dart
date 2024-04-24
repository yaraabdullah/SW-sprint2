import '/flutter_flow/flutter_flow_util.dart';
import 'the_business_gate_widget.dart' show TheBusinessGateWidget;
import 'package:flutter/material.dart';

class TheBusinessGateModel extends FlutterFlowModel<TheBusinessGateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
