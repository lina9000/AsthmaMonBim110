import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'symptom_tracking_widget.dart' show SymptomTrackingWidget;
import 'package:flutter/material.dart';

class SymptomTrackingModel extends FlutterFlowModel<SymptomTrackingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for Additionaldetails widget.
  FocusNode? additionaldetailsFocusNode;
  TextEditingController? additionaldetailsTextController;
  String? Function(BuildContext, String?)?
      additionaldetailsTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    additionaldetailsFocusNode?.dispose();
    additionaldetailsTextController?.dispose();
  }
}
