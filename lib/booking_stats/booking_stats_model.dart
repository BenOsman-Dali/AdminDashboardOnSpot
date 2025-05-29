import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_stats_widget.dart' show BookingStatsWidget;
import 'package:flutter/material.dart';

class BookingStatsModel extends FlutterFlowModel<BookingStatsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAllParkingSpots)] action in booking_stats widget.
  ApiCallResponse? apiResultzg1;
  // Stores action output result for [Backend Call - API (getUserById)] action in booking_stats widget.
  ApiCallResponse? apiResultlcs;
  // Stores action output result for [Backend Call - API (getPercentage)] action in booking_stats widget.
  ApiCallResponse? percentage;
  // Stores action output result for [Backend Call - API (nonBookedPercentage)] action in booking_stats widget.
  ApiCallResponse? dali;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
