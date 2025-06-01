import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'users_widget.dart' show UsersWidget;
import 'package:flutter/material.dart';

class UsersModel extends FlutterFlowModel<UsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getNumberofUsers)] action in users widget.
  ApiCallResponse? numberusers;
  // Stores action output result for [Backend Call - API (deleteUser )] action in Button widget.
  ApiCallResponse? delete0;
  // Stores action output result for [Backend Call - API (getUserById)] action in Button widget.
  ApiCallResponse? salah0;
  // Stores action output result for [Backend Call - API (deleteUser )] action in delete1 widget.
  ApiCallResponse? chemma;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
