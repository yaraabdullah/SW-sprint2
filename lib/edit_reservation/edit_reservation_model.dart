import '/flutter_flow/flutter_flow_util.dart';
import 'edit_reservation_widget.dart' show EditReservationWidget;
import 'package:flutter/material.dart';

class EditReservationModel extends FlutterFlowModel<EditReservationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for numofatt widget.
  FocusNode? numofattFocusNode;
  TextEditingController? numofattTextController;
  String? Function(BuildContext, String?)? numofattTextControllerValidator;
  // State field(s) for numofh widget.
  FocusNode? numofhFocusNode;
  TextEditingController? numofhTextController;
  String? Function(BuildContext, String?)? numofhTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    dateFocusNode?.dispose();
    dateTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    numofattFocusNode?.dispose();
    numofattTextController?.dispose();

    numofhFocusNode?.dispose();
    numofhTextController?.dispose();
  }
}
