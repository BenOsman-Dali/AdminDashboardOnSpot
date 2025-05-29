import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'biwa_model.dart';
export 'biwa_model.dart';

class BiwaWidget extends StatefulWidget {
  const BiwaWidget({super.key});

  static String routeName = 'biwa';
  static String routePath = '/biwa';

  @override
  State<BiwaWidget> createState() => _BiwaWidgetState();
}

class _BiwaWidgetState extends State<BiwaWidget> {
  late BiwaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiwaModel());
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 10.0),
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
                                FFAppState().c9 = false;
                                FFAppState().b1 = false;
                                FFAppState().b2 = false;
                                FFAppState().b3 = false;
                                FFAppState().b4 = false;
                                FFAppState().b5 = false;
                                FFAppState().b6 = false;
                                FFAppState().b7 = false;
                                FFAppState().b8 = false;
                                FFAppState().b9 = false;
                                safeSetState(() {});

                                context.pushNamed(ConstanceWidget.routeName);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '70bq876v' /* Biwa */,
                              ),
                              style: FlutterFlowTheme.of(context)
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
                                FFAppState().n7 = false;
                                FFAppState().n5 = false;
                                FFAppState().n6 = false;
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
                                FFAppState().c9 = false;
                                FFAppState().b1 = false;
                                FFAppState().b2 = false;
                                FFAppState().b9 = false;
                                FFAppState().b7 = false;
                                FFAppState().b6 = false;
                                FFAppState().b8 = false;
                                FFAppState().b5 = false;
                                FFAppState().b4 = false;
                                FFAppState().b3 = false;
                                safeSetState(() {});

                                context.pushNamed(NeuchatelWidget.routeName);
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b1available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b1available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox1Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox1Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b1 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b1 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      '62tr9s5c' /* 1  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b2available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b2available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox2Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox2Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b2 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b2 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'ehsy9ecl' /* 2 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b3available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b3available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox3Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox3Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b3 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b3 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'ucn2j9hl' /* 3 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b4available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b4available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox4Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox4Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b4 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b4 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'ujhdkc91' /* 4 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b5available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b5available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox5Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox5Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b5 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b5 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'kv096t76' /* 5 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b6available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b6available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox6Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox6Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b6 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b6 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'gj2ukkf8' /* 6 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b7available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b7available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox7Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox7Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b7 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b7 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'cdvm364e' /* 7 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b8available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b8available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox8Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox8Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b8 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b8 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'sd97owig' /* 8 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        44.0, 33.0, 44.0, 3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FFAppState().b9available
                                            ? Color(0xFF39D2C0)
                                            : Color(0xFFD81112),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          if (FFAppState().b9available &&
                                              !FFAppState().booked)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.01),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      Color(0x004B39EF),
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkbox9Value ??= false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.checkbox9Value =
                                                            newValue!);
                                                    if (newValue!) {
                                                      FFAppState().selected =
                                                          FFAppState()
                                                                  .selected +
                                                              1;
                                                      safeSetState(() {});
                                                      FFAppState().b9 = true;
                                                      safeSetState(() {});
                                                    } else {
                                                      if (FFAppState()
                                                              .selected >
                                                          0) {
                                                        FFAppState().selected =
                                                            FFAppState()
                                                                    .selected +
                                                                -1;
                                                        safeSetState(() {});
                                                        FFAppState().b9 = false;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  },
                                                  side: (Color(0x004B39EF) !=
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
                                      'pnu6jos3' /* 9 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 5.0),
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
                            'fp12ys2b' /* Legend */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                                    color: FlutterFlowTheme.of(context).primary,
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
                                'd7v99jil' /* Occupied spots */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                                    color: FlutterFlowTheme.of(context).primary,
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
                                'jfdmlm9c' /* Free spots */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.goNamed(DashboardWidget.routeName);
                  },
                  text: FFLocalizations.of(context).getText(
                    'vy03ucxq' /* Return to dashboard */,
                  ),
                  icon: Icon(
                    Icons.dashboard_sharp,
                    size: 20.0,
                  ),
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconColor: FlutterFlowTheme.of(context).primaryText,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
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
  }
}
