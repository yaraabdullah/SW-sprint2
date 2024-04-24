import '/flutter_flow/flutter_flow_util.dart';
import 'points_widget.dart' show PointsWidget;
import 'package:flutter/material.dart';

class PointsModel extends FlutterFlowModel<PointsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
