import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'neuchatel_model.dart';
export 'neuchatel_model.dart';

class NeuchatelWidget extends StatefulWidget {
  const NeuchatelWidget({super.key});

  static String routeName = 'neuchatel';
  static String routePath = '/neuchatel';

  @override
  State<NeuchatelWidget> createState() => _NeuchatelWidgetState();
}

class _NeuchatelWidgetState extends State<NeuchatelWidget> {
  late NeuchatelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NeuchatelModel());

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
            FFAppState().update(() {});
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
            FFAppState().update(() {});
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
            FFAppState().booked =
                valueOrDefault<bool>(currentUserDocument?.bookedToday, false);
            safeSetState(() {});
          }
        }),
        Future(() async {
          if (dateTimeFormat(
                "Hm",
                getCurrentTimestamp,
                locale: FFLocalizations.of(context).languageCode,
              ) ==
              '00:00') {
            await currentUserReference!.update(createUserDetailsRecordData(
              bookedToday: false,
            ));
          }
        }),
        Future(() async {
          _model.podolski =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 10,
          );
        }),
        Future(() async {
          _model.podolski0 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 1,
          );
        }),
        Future(() async {
          _model.podolski1 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 2,
          );
        }),
        Future(() async {
          _model.podolski2 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 3,
          );
        }),
        Future(() async {
          _model.podolski3 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 4,
          );
        }),
        Future(() async {
          _model.podolski4 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 5,
          );
        }),
        Future(() async {
          _model.podolski5 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 6,
          );
        }),
        Future(() async {
          _model.podolski6 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 7,
          );
        }),
        Future(() async {
          _model.podolski7 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 8,
          );
        }),
        Future(() async {
          _model.podolski8 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 9,
          );
        }),
        Future(() async {
          _model.podolski9 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 12,
          );
        }),
        Future(() async {
          _model.podolski10 =
              await SpotsManagementAPIGroup.getParkingSpotByIdCall.call(
            id: 11,
          );
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

    return FutureBuilder<ApiCallResponse>(
      future: SpotsManagementAPIGroup.getNumberofNeuchatelSpotsCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: SpinKitDoubleBounce(
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 150.0,
                ),
              ),
            ),
          );
        }
        final neuchatelGetNumberofNeuchatelSpotsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 10.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x19000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState().selected > 0) {
                                      FFAppState().selected = 0;
                                      safeSetState(() {});
                                    }
                                    FFAppState().n1 = false;
                                    FFAppState().n2 = false;
                                    FFAppState().n4 = false;
                                    FFAppState().n3 = false;
                                    FFAppState().n5 = false;
                                    FFAppState().n6 = false;
                                    FFAppState().n7 = false;
                                    FFAppState().n8 = false;
                                    FFAppState().n9 = false;
                                    FFAppState().b9 = false;
                                    FFAppState().b8 = false;
                                    FFAppState().b7 = false;
                                    FFAppState().b6 = false;
                                    FFAppState().b5 = false;
                                    FFAppState().b4 = false;
                                    FFAppState().b3 = false;
                                    FFAppState().b2 = false;
                                    FFAppState().b1 = false;
                                    FFAppState().c9 = false;
                                    FFAppState().c8 = false;
                                    FFAppState().c7 = false;
                                    FFAppState().c6 = false;
                                    FFAppState().c5 = false;
                                    FFAppState().c4 = false;
                                    FFAppState().c3 = false;
                                    FFAppState().c2 = false;
                                    FFAppState().c1 = false;
                                    safeSetState(() {});

                                    context.pushNamed(BiwaWidget.routeName);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '21jschxk' /* Neuchatel */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState().selected > 0) {
                                      FFAppState().selected = 0;
                                      safeSetState(() {});
                                    }
                                    FFAppState().n1 = false;
                                    FFAppState().n2 = false;
                                    FFAppState().n3 = false;
                                    FFAppState().n4 = false;
                                    FFAppState().n5 = false;
                                    FFAppState().n6 = false;
                                    FFAppState().n7 = false;
                                    FFAppState().n8 = false;
                                    FFAppState().n9 = false;
                                    FFAppState().c1 = false;
                                    FFAppState().c2 = false;
                                    FFAppState().c3 = false;
                                    FFAppState().c4 = false;
                                    FFAppState().c5 = false;
                                    FFAppState().c6 = false;
                                    FFAppState().c7 = false;
                                    FFAppState().c8 = false;
                                    FFAppState().b1 = false;
                                    FFAppState().c9 = false;
                                    FFAppState().b2 = false;
                                    FFAppState().b3 = false;
                                    FFAppState().b4 = false;
                                    FFAppState().b5 = false;
                                    FFAppState().b6 = false;
                                    FFAppState().b7 = false;
                                    FFAppState().b8 = false;
                                    FFAppState().b9 = false;
                                    safeSetState(() {});

                                    context
                                        .pushNamed(ConstanceWidget.routeName);
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                ),
                              ].divide(SizedBox(width: 80.0)),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 1.0,
                                childAspectRatio: 1.0,
                              ),
                              primary: false,
                              shrinkWrap: true,
                              children: [
                                if ((_model.podolski0?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n1Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n1Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .number1Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.number1Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n1 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n1 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kcozyfys' /* 1  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski1?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n2Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n2Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox2Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox2Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n2 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n2 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 4.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7p7hp5z9' /* 2 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski2?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n3Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n3Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox3Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox3Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n3 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n3 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'y8y9ebvs' /* 3 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski3?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n4Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n4Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox4Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox4Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n4 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n4 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '6h1r8ifn' /* 4 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski4?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n5Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n5Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox5Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox5Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n5 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n5 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'gpheh6qi' /* 5 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski5?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n6Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .n6Available &&
                                                        !FFAppState().booked)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.03, 0.01),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0x004B39EF),
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkbox6Value ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkbox6Value =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                FFAppState()
                                                                        .selected =
                                                                    FFAppState()
                                                                            .selected +
                                                                        1;
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                    .n6 = true;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                if (FFAppState()
                                                                        .selected >
                                                                    0) {
                                                                  FFAppState()
                                                                          .selected =
                                                                      FFAppState()
                                                                              .selected +
                                                                          -1;
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                          .n6 =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              }
                                                            },
                                                            side:
                                                                (Color(0x004B39EF) !=
                                                                        null)
                                                                    ? BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: Color(
                                                                            0x004B39EF),
                                                                      )
                                                                    : null,
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'iwefk9va' /* 6 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski6?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n7Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n7Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox7Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox7Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n7 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n7 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ry9gu419' /* 7 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski7?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n8Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n8Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox8Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox8Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n8 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n8 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'li1bmya7' /* 8 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski8?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n9Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n9Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox9Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox9Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n9 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n9 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'lcclx3kd' /* 9 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n1Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n1Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox10Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox10Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n1 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n1 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ik95bdx6' /* 10 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski10?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n1Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n1Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox11Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox11Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n1 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n1 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8vbfjyo0' /* 11 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if ((_model.podolski9?.succeeded ?? true))
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  44.0, 33.0, 44.0, 3.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: FFAppState().n1Available
                                                  ? Color(0xFF39D2C0)
                                                  : Color(0xFFD81112),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                if (FFAppState().n1Available &&
                                                    !FFAppState().booked)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.03, 0.01),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0x004B39EF),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkbox12Value ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkbox12Value =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            FFAppState()
                                                                    .selected =
                                                                FFAppState()
                                                                        .selected +
                                                                    1;
                                                            safeSetState(() {});
                                                            FFAppState().n1 =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            if (FFAppState()
                                                                    .selected >
                                                                0) {
                                                              FFAppState()
                                                                      .selected =
                                                                  FFAppState()
                                                                          .selected +
                                                                      -1;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState().n1 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }
                                                        },
                                                        side:
                                                            (Color(0x004B39EF) !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0x004B39EF),
                                                                  )
                                                                : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '6t8qckkb' /* 12 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 5.0),
                    child: Container(
                      width: double.infinity,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x19000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'pqxbkzgl' /* Legend */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      13.0, 17.0, 10.0, 2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD81112),
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 22.0, 0.0),
                                      child: Container(
                                        height: 20.0,
                                        child: Stack(
                                          children: [],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 224.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3xety49q' /* Occupied spots */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      13.0, 17.0, 10.0, 2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF39D2C0),
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 22.0, 0.0),
                                      child: Container(
                                        height: 20.0,
                                        child: Stack(
                                          children: [],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 255.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'dbs3zma3' /* Free spots */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            content: Text(
                                                'Are you sure that you want to add a parking spot'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Yes'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                FFAppState().nbNeuchatel =
                                    FFAppState().nbNeuchatel + 1;
                                FFAppState().update(() {});
                                _model.postt = await SpotsManagementAPIGroup
                                    .createParkingSpotCall
                                    .call(
                                  department: 'neuchatel',
                                  number: FFAppState().nbNeuchatel,
                                  available: true,
                                  spotId: FFAppState().nbNeuchatel,
                                );
                              }

                              safeSetState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'x2idjo3l' /* Add a spot */,
                            ),
                            icon: Icon(
                              Icons.add,
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              width: 170.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              color: Color(0xFF1AFF00),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Future.wait([
                                Future(() async {
                                  if (_model.number1Value!) {
                                    _model.apiResultb55 =
                                        await SpotsManagementAPIGroup
                                            .deleteParkingSpotCall
                                            .call(
                                      id: 1,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox10Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    _model.apiResultpy8 =
                                        await SpotsManagementAPIGroup
                                            .deleteParkingSpotCall
                                            .call(
                                      id: 10,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox11Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 11,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox12Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 12,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox2Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 2,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox3Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 3,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox4Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 4,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox5Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 5,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox6Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 6,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox7Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 7,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox8Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 8,
                                    );
                                  }
                                }),
                                Future(() async {
                                  if (_model.checkbox9Value!) {
                                    FFAppState().nbNeuchatel =
                                        FFAppState().nbNeuchatel + -1;
                                    safeSetState(() {});
                                    await SpotsManagementAPIGroup
                                        .deleteParkingSpotCall
                                        .call(
                                      id: 9,
                                    );
                                  }
                                }),
                              ]);

                              safeSetState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'e154xwob' /* Delete a spot */,
                            ),
                            icon: Icon(
                              Icons.delete_outline,
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              width: 170.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              color: Color(0xFFFB0202),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 7.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(DashboardWidget.routeName);
                      },
                      text: FFLocalizations.of(context).getText(
                        'j99l7mu3' /* Return to dashboard */,
                      ),
                      icon: Icon(
                        Icons.dashboard_sharp,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: 250.0,
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.roboto(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
