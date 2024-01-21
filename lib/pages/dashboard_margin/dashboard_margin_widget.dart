import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_margin_model.dart';
export 'dashboard_margin_model.dart';

class DashboardMarginWidget extends StatefulWidget {
  const DashboardMarginWidget({Key? key}) : super(key: key);

  @override
  _DashboardMarginWidgetState createState() => _DashboardMarginWidgetState();
}

class _DashboardMarginWidgetState extends State<DashboardMarginWidget> {
  late DashboardMarginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardMarginModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x00FFFFFF),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wrapWithModel(
              model: _model.sideNavModel,
              updateCallback: () => setState(() {}),
              child: SideNavWidget(),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 1370.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0x00E0E3E7),
                  border: Border.all(
                    color: Color(0x00222222),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MARGIN',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'If truly wanted money, You wouldn\'t be able to sleep',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        '',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF606A85),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: Text(
                              '⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡝⠉⠀⣠⠆⠀⠀⣰⣿⢧⣿⠏⠹⢌⠉⣸⡏⢀⣠⠞⠉⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠈⢙⣆⠹⡭⣟⢻⣿⣿⠀⠀⠀⠀⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠟⠀⣠⡞⠁⠀⠀⢠⣿⡟⣾⡏⠀⠳⣄⢰⣿⣠⡿⠃⠀⠀⠀⠀⠀⠀⣀⡤⠄⣾⠇⠀⠀⠀⠀⠀⠀⠀⢀⣿⣆⣷⠘⡆⠻⣿⡄⠀⠀⠀⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡏⠀⣰⠏⠀⠀⠀⠀⣼⣿⢱⣿⠁⠀⠀⢘⣾⣿⡿⢁⣠⡴⢿⣠⣀⣴⠋⠁⠀⢠⡏⢀⡆⠀⢰⡶⣶⠒⠒⠉⢸⣿⠾⡗⠃⠀⠈⣿⣆⠀⠀⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠀⣴⡿⠀⠀⠀⠀⢰⣿⡏⣾⡟⠀⠀⠀⡮⣿⣿⣷⣿⡟⢁⣴⡾⠥⠤⣍⡉⠉⡟⠒⢻⠉⠛⢹⡇⢸⣇⠔⠋⠻⣿⠀⠀⠀⠀⠀⣌⢻⡄⠀⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⣼⣿⠃⠀⠀⠀⢀⣿⣿⠁⣿⠇⠀⠀⠘⢸⣿⣿⣿⣿⣾⡿⣫⠞⠁⢀⠀⢹⡾⠛⢙⡟⠊⠙⡞⠋⠉⠀⢀⠀⠀⣿⡆⠀⠀⠀⠀⢿⡆⢷⠀⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⢠⣿⡟⠀⠀⠀⢠⣼⣿⡏⢸⣿⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⡟⠁⣠⣴⠟⢀⣾⠃⢠⣾⠀⠀⢠⡇⠀⠀⠀⢸⠀⠀⣿⡇⠀⣀⠀⠀⠀⢻⡌⡇⠀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡇⣾⣿⠁⠀⠀⠀⢸⣿⣿⣧⣼⡇⠀⠀⠀⠀⣿⣿⣿⣿⣿⠏⣠⣾⣿⠋⢀⣾⠋⢀⣾⣿⠀⢀⣿⡇⠀⠀⢠⣿⠀⢀⣿⡇⠀⢹⡆⠀⠀⠈⣿⣿⡀⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢱⣿⡇⠀⠀⠀⠈⣼⣿⡿⣿⣿⣉⠑⠶⠤⣴⣿⣿⣿⡿⣣⣾⣿⣿⠃⣠⣾⣇⣴⡟⢠⣿⡆⢸⣿⠃⠀⠀⣾⣿⠀⣼⣿⣿⠀⢸⣷⠀⠀⠀⢽⣿⣇⠀\n    ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣾⡿⠀⠀⠀⡐⣰⣿⣿⠇⢸⣿⠛⠻⠷⣦⣴⣿⣿⣿⣿⣿⣿⣿⣵⣿⣿⣿⡿⣋⡀⣸⣿⡇⣿⣿⠀⠀⣼⣿⣿⠀⣿⠋⣿⡇⢸⣿⡄⠀⠀⢸⣿⣿⡀\n    ⡀⠀⠀⠀⠀⣤⠆⠀⣿⣿⣿⠇⠀⠀⢠⢡⣿⣿⡿⠀⢸⣿⠀⠀⢠⠆⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⠞⠁⡇⣿⣿⣿⣿⡿⠀⢰⣿⣿⣏⣼⣿⠆⢹⣷⢸⣿⡇⠀⠀⣸⣿⣿⡇\n    ⠅⠀⠀⢀⡤⢎⡡⣸⣿⣿⣿⠀⠀⢀⡏⣾⣿⣿⡇⠀⣸⣿⠀⠀⣸⢠⣿⣿⣿⣿⣿⣿⣿⣿⠿⠷⠶⠦⢤⣀⣗⣿⣿⣿⣿⠇⣰⣿⣿⣿⣿⡿⠃⠀⢘⣿⣼⣿⡇⠀⢠⣿⣿⣿⣷\n    ⠀⠀⠀⠒⠥⠐⠅⣼⣿⣿⡏⠀⣠⢴⢶⣿⣿⣿⠀⠀⣿⡇⠀⠀⣗⣸⣿⣿⣿⡿⠟⠋⠁⠀⠀⢀⠀⠀⠀⢠⢿⣿⣿⣿⣿⣰⣿⣿⣿⣿⡿⠁⠀⠀⠈⣿⣿⣿⡇⠀⣸⣿⣿⣿⣿\n    ⠀⠀⠀⠈⣀⠢⢠⣿⣿⣿⠇⡼⣵⣉⣽⣿⣿⡏⠀⠀⣿⡇⠀⢸⡇⣽⣋⣉⣴⣶⣶⣶⣶⣶⣗⣛⢭⡑⠆⣼⣿⡿⢿⣿⣿⣿⣿⣿⣿⡿⠧⠤⣄⣀⠀⢹⣿⣿⡇⢠⣿⣿⣿⣿⣿\n    ⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⢸⡗⡿⢴⣛⣿⣿⠇⠀⢐⣿⡇⠀⣸⡇⡿⣿⠹⣿⣿⣿⣿⣿⣿⡟⠻⢿⡆⢠⣿⠇⠀⠀⠛⢁⣿⠟⣨⢟⣁⣀⠀⠀⠈⠛⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿\n    ⠀⠀⠀⠀⠀⠀⣼⣿⣿⡏⢸⡇⢧⣀⣹⣿⣿⠀⠀⢸⣿⡇⠀⢿⢠⠇⠈⠒⠽⢷⣋⣉⣋⡿⠁⠀⠀⠁⣼⠏⠀⠀⠀⣠⢾⣏⠜⢁⣠⣭⣍⣒⣤⡀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠘\n    ⠀⠀⠀⠀⠀⢐⣿⣿⣿⠃⠈⣿⣄⡹⣿⣿⡏⠀⠀⢸⣿⡇⢀⡟⣸⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⡰⠃⢀⣠⠴⠋⣴⠟⠁⢺⣿⣿⣿⣿⣿⣿⣿⣲⡾⠉⠻⣿⣿⠻⢻⣿⣿⠀\n    ⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⣸⣿⣿⣿⣿⡇⠀⠀⢸⣿⡇⢸⡇⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠗⠚⠉⠀⠀⠘⠁⠀⠀⠘⢿⣟⣛⣿⠁⠨⡛⣻⠃⠀⣸⣿⠃⢀⡿⣿⡇⠀\n    ⠀⠀⠀⠀⠀⣼⣿⣿⡟⠀⡆⣿⣿⣿⣿⣿⠁⠀⠀⢸⣿⡇⠸⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⢠⡷⢃⣰⡞⡽⠃⢀⡾⠁⣿⠁⠀\n    ⠀⠀⠀⠀⢀⣿⣿⣿⠃⣸⢹⣿⣿⣿⢻⡿⠀⠀⠀⢸⣿⡇⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣷⣿⣿⡞⠉⢠⡟⠁⣸⠇⠀⠀\n    ⡀⠀⠀⠀⣸⣿⣿⡟⢠⡇⣾⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⡇⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣹⣿⣿⣿⠏⢀⣶⠟⠀⢠⠋⠀⠀⠀\n    ⠀⠀⠀⢀⣿⣿⣿⠃⣸⢰⣿⣿⣿⠁⣿⠃⠀⠀⠀⢸⣿⡇⠀⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⢻⡿⣧⣶⣿⡇⠀⠀⠀⠀⠀⠀⠀\n    ⠀⠀⠀⣸⣿⣿⡏⢠⠇⣿⣿⣿⡏⢨⣿⠀⠀⠀⠀⢸⣿⣷⠀⡿⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠲⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣻⣿⣾⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⢀\n    ⠀⠀⠀⣿⣿⡿⠑⡼⢰⣿⣿⣿⡇⢸⡿⠀⠀⠀⠀⠸⣿⣿⢀⡇⠀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⠒⠒⠂⠀⠀⠀⠀⠀⠀⣠⣿⠟⠻⢿⣿⣿⠁⣿⣿⠀⢀⠔⢁⠀⠐⠀\n    ⠀⠀⣸⣿⣿⠃⣸⠃⣿⣿⣿⡿⠀⣸⡇⠀⠀⠀⠀⠀⣿⣿⣸⡇⠀⠀⠀⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⣿⡆⠀⢸⣿⣿⠀⣿⣿⠀⣁⣰⠅⠐⢁⠀\n    ⠀⣴⣿⣿⠧⣲⠏⣸⣿⣿⣿⠇⠀⣿⡇⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⠋⠀⢻⡇⠀⢸⣿⣿⡇⣿⣿⡾⠉⠄⠒⢀⠠⠄\n    ⡜⣽⣿⠏⣱⡟⢠⣿⣿⣿⣿⠀⢨⣿⡀⢀⡄⠀⠀⠀⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠘⢷⢦⣄⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⠁⠀⠀⠘⡇⠀⢘⣿⣿⡇⢿⡇⡇⠀⠐⠀⠀⠉⠀\n    ⣰⣿⡟⣠⡿⠁⣾⣿⣿⣿⡏⠀⣿⡟⠹⢜⡿⡄⡀⠀⢸⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡍⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⢻⠀⠈⣿⣿⣧⢸⠇⢿⡀⠀⠀⠀⠀⠀\n    ⣿⠟⢠⣿⠃⣸⣿⣿⣿⣿⠃⠀⣿⡇⠲⡄⡇⢻⠙⠂⠸⣿⣿⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡏⡇⠙⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⠸⡄⠀⣿⣿⣿⢸⡄⠘⣇⠀⠀⠀⠀⠀\n    ⠏⢠⣿⠇⢰⣿⣿⣿⣿⣿⠀⢸⣿⡇⠀⠘⣿⠘⠆⢤⡀⢿⢹⠀⠀⠈⠓⢤⣀⠀⠀⠀⠀⠀⢸⡇⡇⠘⠘⢿⣿⣿⣿⣿⣿⣿⡆⢧⢀⢸⠘⣇⠆⢿⣿⣿⡎⡇⠀⣿⠀⠀⠀⠀⠀\n    ⣠⣿⡏⣀⡼⠿⣷⣦⣼⡇⠀⣼⢹⡇⠀⠀⢸⡇⠀⠀⠈⠸⣽⡆⠀⠀⠀⠀⠀⠉⠒⠤⣀⠀⡜⡿⠀⠀⠱⡌⢯⡛⠿⢿⣿⣿⣧⠘⣏⠀⡇⢹⠀⢸⣿⣿⣧⣧⠀⠘⡇⠀⠀⠀⠀\n    ⣿⠟⠋⣑⡦⠖⠋⢿⣿⠁⠀⡿⣸⡇⠀⡇⠘⣿⡀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⡇⣆⠀⠀⠈⠂⢳⡄⠀⠈⢻⣿⣄⠘⢆⣿⡘⡇⠸⣿⣿⣿⣿⠀⠀⢻⡀⠀⠀⠀\n    ⠴⠒⠋⠁⠀⠀⠀⢸⣿⡄⢰⡇⢸⡇⠀⣿⡀⢻⣧⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠙⡟⡌⢣⣄⠀⠀⠀⠻⣄⠀⠀⢹⣿⡄⠀⢸⣧⢻⡀⣿⣿⣿⣿⡇⠀⠈⣧⠀⠀⠀\n    ⠒⠢⢤⣀⡀⠀⠀⢸⣿⠀⣼⠀⠈⡇⠀⢿⢇⠀⣿⣆⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⡄⣇⠀⢿⡗⢦⣀⡀   Not Implemented Yet⡆⠀⠀',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'eurostile',
                                    color: Color(0xFF5CB5FF),
                                    fontSize: 20.0,
                                    useGoogleFonts: false,
                                    lineHeight: 1.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
