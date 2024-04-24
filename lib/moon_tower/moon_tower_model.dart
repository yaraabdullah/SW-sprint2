import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'moon_tower_widget.dart' show MoonTowerWidget;
import 'package:flutter/material.dart';

class MoonTowerModel extends FlutterFlowModel<MoonTowerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BookingsRecord? bookid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
