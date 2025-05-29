import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_stats_model.dart';
export 'booking_stats_model.dart';

class BookingStatsWidget extends StatefulWidget {
  const BookingStatsWidget({super.key});

  static String routeName = 'booking_stats';
  static String routePath = '/bookingStats';

  @override
  State<BookingStatsWidget> createState() => _BookingStatsWidgetState();
}

class _BookingStatsWidgetState extends State<BookingStatsWidget> {
  late BookingStatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingStatsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResultzg1 =
              await SpotsManagementAPIGroup.getAllParkingSpotsCall.call();

          if ((_model.apiResultzg1?.succeeded ?? true)) {
            FFAppState().n1Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[0].available''',
            );
            FFAppState().n2Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[1].available''',
            );
            FFAppState().n3Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[2].available''',
            );
            FFAppState().n4Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[3].available''',
            );
            FFAppState().n5Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[4].available''',
            );
            FFAppState().n6Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[5].available''',
            );
            FFAppState().n7Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[6].available''',
            );
            FFAppState().n8Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[7].available''',
            );
            FFAppState().n9Available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[8].available''',
            );
            safeSetState(() {});
            FFAppState().c1available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[9].available''',
            );
            FFAppState().c2available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[10].available''',
            );
            FFAppState().c3available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[11].available''',
            );
            FFAppState().c4available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[12].available''',
            );
            FFAppState().c5available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[13].available''',
            );
            FFAppState().c6available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[14].available''',
            );
            FFAppState().c7available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[15].available''',
            );
            FFAppState().c8available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[16].available''',
            );
            FFAppState().c9available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[17].available''',
            );
            safeSetState(() {});
            FFAppState().b1available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[18].available''',
            );
            FFAppState().b2available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[19].available''',
            );
            FFAppState().b3available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[20].available''',
            );
            FFAppState().b4available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[21].available''',
            );
            FFAppState().b5available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[22].available''',
            );
            FFAppState().b6available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[23].available''',
            );
            FFAppState().b7available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[24].available''',
            );
            FFAppState().b8available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[25].available''',
            );
            FFAppState().b9available = getJsonField(
              (_model.apiResultzg1?.jsonBody ?? ''),
              r'''$[26].available''',
            );
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.apiResultlcs =
              await UserManagementAPIGroup.getUserByIdCall.call(
            id: currentUserUid,
          );

          if ((_model.apiResultlcs?.succeeded ?? true)) {
            await currentUserReference!.update(createUserDetailsRecordData(
              email: getJsonField(
                (_model.apiResultlcs?.jsonBody ?? ''),
                r'''$.email''',
              ).toString().toString(),
              uid: getJsonField(
                (_model.apiResultlcs?.jsonBody ?? ''),
                r'''$.id''',
              ).toString().toString(),
              firstName: getJsonField(
                (_model.apiResultlcs?.jsonBody ?? ''),
                r'''$.firstName''',
              ).toString().toString(),
              lastName: getJsonField(
                (_model.apiResultlcs?.jsonBody ?? ''),
                r'''$.lastName''',
              ).toString().toString(),
              phoneNumber: getJsonField(
                (_model.apiResultlcs?.jsonBody ?? ''),
                r'''$.phoneNumber''',
              ).toString().toString(),
            ));
          }
        }),
        Future(() async {
          if (dateTimeFormat(
                "Hm",
                getCurrentTimestamp,
                locale: FFLocalizations.of(context).languageCode,
              ) ==
              '13:09') {
            await currentUserReference!.update(createUserDetailsRecordData(
              bookedToday: false,
            ));
          }
        }),
        Future(() async {
          FFAppState().booked =
              valueOrDefault<bool>(currentUserDocument?.bookedToday, false);
          safeSetState(() {});
        }),
        Future(() async {
          _model.percentage =
              await SpotsManagementAPIGroup.getPercentageCall.call();

          _model.dali =
              await SpotsManagementAPIGroup.nonBookedPercentageCall.call();

          FFAppState().AvSpots = getJsonField(
            (_model.dali?.jsonBody ?? ''),
            r'''$''',
          );
          FFAppState().bookedSpots = getJsonField(
            (_model.percentage?.jsonBody ?? ''),
            r'''$''',
          );
          FFAppState().update(() {});
        }),
      ]);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            actions: [],
            centerTitle: false,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'frk0oi3o' /* Parking Spot Availability Toda... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Container(
                    width: 370.0,
                    height: 368.38,
                    child: Stack(
                      children: [
                        FlutterFlowPieChart(
                          data: FFPieChartData(
                            values: [
                              FFAppState().bookedSpots,
                              FFAppState().AvSpots
                            ],
                            colors: [
                              Color(0xFFFB0202),
                              FlutterFlowTheme.of(context).secondary
                            ],
                            radius: [150.0, 150.0],
                          ),
                          donutHoleRadius: 0.0,
                          donutHoleColor: Colors.transparent,
                          sectionLabelType: PieChartSectionLabelType.percent,
                          sectionLabelStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, 1.0),
                          child: FlutterFlowChartLegendWidget(
                            entries: [
                              LegendEntry(
                                  Color(0xFFFB0202),
                                  FFLocalizations.of(context).getText(
                                    'ijuot70u' /* Booked */,
                                  )),
                              LegendEntry(
                                  FlutterFlowTheme.of(context).secondary,
                                  FFLocalizations.of(context).getText(
                                    '4glf1kci' /* Available */,
                                  )),
                            ],
                            width: 100.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            borderWidth: 1.0,
                            borderColor: Colors.black,
                            indicatorSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ].addToEnd(SizedBox(height: 100.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
