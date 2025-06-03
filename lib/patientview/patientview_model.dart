import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'patientview_widget.dart' show PatientviewWidget;
import 'package:flutter/material.dart';

class PatientviewModel extends FlutterFlowModel<PatientviewWidget> {
  ///  Local state fields for this page.

  String uRLforWEBOpen =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Patientview widget.
  List<DailysymptemsRecord>? quearyoutput;
  // Stores action output result for [Firestore Query - Query a collection] action in Patientview widget.
  List<DailysymptemsRecord>? fvcqueary;
  // Stores action output result for [Backend Call - API (Chart new )] action in Patientview widget.
  ApiCallResponse? apiResultsj3Copy;
  // Stores action output result for [Backend Call - API (FVC chart)] action in Patientview widget.
  ApiCallResponse? apiResult7x1;
  // Stores action output result for [Backend Call - API (FVC one Chart)] action in Patientview widget.
  ApiCallResponse? apiResultr2r;
  // Stores action output result for [Backend Call - API (RatioCHart)] action in Patientview widget.
  ApiCallResponse? apiResult0nb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
