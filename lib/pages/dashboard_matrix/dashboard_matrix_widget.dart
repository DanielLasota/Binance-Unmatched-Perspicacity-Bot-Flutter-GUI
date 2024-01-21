import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_matrix_model.dart';
export 'dashboard_matrix_model.dart';

class DashboardMatrixWidget extends StatefulWidget {
  const DashboardMatrixWidget({Key? key}) : super(key: key);

  @override
  _DashboardMatrixWidgetState createState() => _DashboardMatrixWidgetState();
}

class _DashboardMatrixWidgetState extends State<DashboardMatrixWidget> {
  late DashboardMatrixModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardMatrixModel());

    _model.textController ??= TextEditingController(text: '>>  ');
    _model.textFieldFocusNode ??= FocusNode();
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
                  color: FlutterFlowTheme.of(context).alternate,
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
                                  'MATRIX MODE',
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
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 482.0,
                                  height: 346.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: CustomWebView(
                                    url:
                                        '<!-- TradingView Widget BEGIN -->\n<div class=\"tradingview-widget-container\">\n  <div class=\"tradingview-widget-container__widget\"></div>\n  <div class=\"tradingview-widget-copyright\"><a href=\"https://www.tradingview.com/\" rel=\"noopener nofollow\" target=\"_blank\"><span class=\"blue-text\">Track all markets on TradingView</span></a></div>\n  <script type=\"text/javascript\" src=\"https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js\" async>\n  {\n  \"width\": \"100%\",\n  \"height\": \"370\",\n  \"symbol\": \"BINANCE:BTCUSD\",\n  \"interval\": \"30\",\n  \"timezone\": \"Etc/UTC\",\n  \"theme\": \"light\",\n  \"style\": \"1\",\n  \"locale\": \"en\",\n  \"enable_publishing\": false,\n  \"backgroundColor\": \"rgba(255, 255, 255, 1)\",\n  \"hide_top_toolbar\": false,\n  \"hide_legend\": false,\n  \"save_image\": false,\n  \"hide_volume\": true,\n  \"support_host\": \"https://www.tradingview.com\"\n}\n  </script>\n</div>\n<!-- TradingView Widget END -->',
                                  ),
                                ),
                                Container(
                                  width: 482.0,
                                  height: 252.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Text(
                                    'STATUS: IDLE\n\nStrategies:\nNODA: R\nAWS: R -bt\nStochRSI: R -bt\n\npnl: 2137 EUR\npnl(tdy): 2118\n\nworking time: 21:37:18\nConnection: good\nNODA: R\nAWS: R -bt\nStochRSI: R -bt',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'eurostile',
                                          fontSize: 14.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 482.0,
                                  height: 326.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 374.0,
                                      height: 415.0,
                                      child: Stack(
                                        children: [
                                          FlutterFlowLineChart(
                                            data: [
                                              FFLineChartData(
                                                xData: [
                                                  DateTime(2023, 1, 1),
                                                  DateTime(2023, 1, 2),
                                                  DateTime(2023, 1, 3),
                                                  DateTime(2023, 1, 4),
                                                  DateTime(2023, 1, 5),
                                                  DateTime(2023, 1, 6),
                                                  DateTime(2023, 1, 7),
                                                  DateTime(2023, 1, 8),
                                                  DateTime(2023, 1, 9),
                                                  DateTime(2023, 1, 10),
                                                  DateTime(2023, 1, 11),
                                                  DateTime(2023, 1, 12),
                                                  DateTime(2023, 1, 13),
                                                  DateTime(2023, 1, 14),
                                                  DateTime(2023, 1, 15),
                                                  DateTime(2023, 1, 16),
                                                  DateTime(2023, 1, 17),
                                                  DateTime(2023, 1, 18),
                                                  DateTime(2023, 1, 19),
                                                  DateTime(2023, 1, 20),
                                                ],
                                                yData: [
                                                  100, // PnL dla 2023-01-01
                                                  150, // PnL dla 2023-01-02
                                                  120, // PnL dla 2023-01-03
                                                  130, // PnL dla 2023-01-04
                                                  110, // PnL dla 2023-01-05
                                                  115, // PnL dla 2023-01-06
                                                  105, // PnL dla 2023-01-07
                                                  125, // PnL dla 2023-01-08
                                                  135, // PnL dla 2023-01-09
                                                  145, // PnL dla 2023-01-10
                                                  155, // PnL dla 2023-01-11
                                                  165, // PnL dla 2023-01-12
                                                  175, // PnL dla 2023-01-13
                                                  185, // PnL dla 2023-01-14
                                                  195, // PnL dla 2023-01-15
                                                  205, // PnL dla 2023-01-16
                                                  215, // PnL dla 2023-01-17
                                                  225, // PnL dla 2023-01-18
                                                  235, // PnL dla 2023-01-19
                                                  245, // PnL dla 2023-01-20
                                                ],
                                                settings: LineChartBarData(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  barWidth: 2.0,
                                                  isCurved: true,
                                                  preventCurveOverShooting:
                                                      true,
                                                  dotData:
                                                      FlDotData(show: false),
                                                ),
                                              )
                                            ],
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              showBorder: false,
                                            ),
                                            axisBounds: AxisBounds(),
                                            xAxisLabelInfo: AxisLabelInfo(),
                                            yAxisLabelInfo: AxisLabelInfo(),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: FlutterFlowChartLegendWidget(
                                              entries: [
                                                LegendEntry(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                    'pnl'),
                                              ],
                                              width: 50.0,
                                              height: 20.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textPadding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              borderWidth: 1.0,
                                              borderColor: Colors.black,
                                              indicatorSize: 6.0,
                                              indicatorBorderRadius:
                                                  BorderRadius.circular(2.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 2.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150.0,
                                height: 560.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '27497.33   7.0\n27497.33   5.0\n27497.33   0.6\n27497.33   8.0\n27497.33   5.0\n27497.33   3.0\n27497.33   0.7\n27497.33   0.2\n27497.33   0.1\n27497.33   1.4\n27497.33   7.0\n27497.33   5.0\n27497.33   0.6\n27497.33   8.0',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'eurostile',
                                            color: Color(0xFFFF0004),
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'SPREAD: 0.01 \nLIQUIDITY: 57',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'eurostile',
                                            color: Color(0xFF557EFF),
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      '27497.33   7.0\n27497.33   5.0\n27497.33   0.6\n27497.33   8.0\n27497.33   5.0\n27497.33   3.0\n27497.33   0.7\n27497.33   0.2\n27497.33   0.1\n27497.33   1.4\n27497.33   7.0\n27497.33   5.0\n27497.33   0.6\n27497.33   8.0',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'eurostile',
                                            color: Color(0xFF00FFDB),
                                            fontSize: 16.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                              Container(
                                width: 150.0,
                                height: 211.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Text(
                                  '27497.33  3.4\n27497.33  2.1\n27497.33  3.7\n27497.33  1.0\n27497.33  1.0\n27497.33  3.5\n27497.33  1.0\n27497.33  1.0\n27497.33  3.5\n27497.33  3.5\n27497.33  3.4\n27497.33  2.1\n27497.33  3.7\n27497.33  1.0\n27497.33  1.0\n27497.33  3.5',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'eurostile',
                                        color: Color(0xFF6BAFDF),
                                        fontSize: 16.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Container(
                                width: 150.0,
                                height: 152.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Text(
                                  'NODA        2137\nAWS           2137\nAWR           2137\nNODA        2137\nAWS           2137\nAWR           2137\nNODA        2137\nAWS           2137\nAWR           2137\nAWR           2137',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'eurostile',
                                        color: Color(0xFF6BAFDF),
                                        fontSize: 16.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 1013.0,
                                height: 884.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Text(
                                  'ADDING: STRATEGY: STOCH RSI BTCUSDT LIMIT ORDER 42099.25 # 15.01.2024 T 00:23:12\nEXECUTED: STRATEGY: STOCH RSI INTERNAL ORDER_ID 2115 BTCUSDT 42099.25 15.01.2024 T 00:23:12\nADDING: STRATEGY: MACD ETHUSDT MARKET BUY # 15.01.2024 T 00:24:05\nEXECUTED: STRATEGY: MACD INTERNAL ORDER_ID 2116 ETHUSDT MARKET BUY 15.01.2024 T 00:24:05\nADDING: STRATEGY: MOVING AVERAGE \nPENDING: STRATEGY: MOVING AVERAGE INTERNAL ORDER_ID 2117 LTCUSDT 105.75 15.01.2024 T 00:25:30\nCANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL ORDER_ID 2113 XRPUSDT 0.4523 15.01.2024 T 00:26:10\nADDING: STRATEGY: FIBONACCI RETRACEMENT XMRUSDT LIMIT BUY 215.40 # 15.01.2024 T 00:27:45\nEXECUTED: STRATEGY: FIBONACCI RETRACEMENT INTERNAL ORDER_ID 2118 XMRUSDT 215.40 15.01.2024 T 00:27:45\nALERT: STRATEGY: MEAN REVERSION BTCUSDT PRICE DROPPED TO 41800.00 # 15.01.2024 T 00:28:22\nREQUEST: STRATEGY: VOLUME ANALYSIS BTCUSDT MARKET SELL # 15.01.2024 T 00:29:03\nEXECUTED: STRATEGY: VOLUME ANALYSIS INTERNAL ORDER_ID 2119 BTCUSDT 41799.75 15.01.2024 T 00:29:03\nADDING: STRATEGY: PARABOLIC SAR ADAUSDT LIMIT ORDER 0.352 # 15.01.2024 T 00:30:56\nPENDING: STRATEGY: PARABOLIC SAR INTERNAL ORDER_ID 2120 ADAUSDT 0.352 15.01.2024 T 00:30:56\nUPDATE: STRATEGY: ICHIMOKU CLOUD LTCUSDT LIMIT SELL ORDER UPDATED TO 106.00 # 15.01.2024 T 00:31:42\nEXECUTED: STRATEGY: ICHIMOKU CLOUD INTERNAL ORDER_ID 2117 LTCUSDT 106.00 15.01.2024 T 00:31:42\nALERT: STRATEGY: RSI DIVERGENCE ETHUSDT PRICE INCREASED TO 1395.00 # 15.01.2024 T 00:33:19\nADDING: STRATEGY: HEIKEN-ASHI BCHUSDT LIMIT BUY 312.00 # 15.01.2024 T 00:34:07\nPENDING: STRATEGY: HEIKEN-ASHI INTERNAL ORDER_ID 2121 BCHUSDT 312.00 15.01.2024 T 00:34:07\nEXECUTED: STRATEGY: PIVOT POINTS INTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nADDING: STRATEGY: STOCH RSI BTCUSDT LIMIT ORDER 42099.25 # 15.01.2024 T 00:23:12\nEXECUTED: STRATEGY: STOCH RSI INTERNAL ORDER_ID 2115 BTCUSDT 42099.25 15.01.2024 T 00:23:12\nADDING: STRATEGY: MACD ETHUSDT MARKET BUY # 15.01.2024 T 00:24:05\nEXECUTED: STRATEGY: MACD INTERNAL ORDER_ID 2116 ETHUSDT MARKET BUY 15.01.2024 T 00:24:05\nADDING: STRATEGY: MOVING AVERAGE LTCUSDT LIMIT SELL 105.75 # 15.01.2024 T 00:25:30\nPENDING: STRATEGY: MOVING AVERAGE INTERNAL ORDER_ID 2117 LTCUSDT 105.75 15.01.2024 T 00:25:30\nCANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL ORDER_ID 2113 XRPUSDT 0.4523 15.01.2024 T 00:26:10\nADDING: STRATEGY: FIBONACCI RETRACEMENT XMRUSDT LIMIT BUY 215.40 # 15.01.2024 T 00:27:45\nEXECUTED: STRATEGY: FIBONACCI RETRACEMENT INTERNAL ORDER_ID 2118 XMRUSDT 215.40 15.01.2024 T 00:27:45\nALERT: STRATEGY: MEAN REVERSION BTCUSDT PRICE DROPPED TO 41800.00 # 15.01.2024 T 00:28:22\nREQUEST: STRATEGY: VOLUME ANALYSIS BTCUSDT MARKET SELL # 15.01.2024 T 00:29:03\nEXECUTED: STRATEGY: VOLUME ANALYSIS INTERNAL ORDER_ID 2119 BTCUSDT 41799.75 15.01.2024 T 00:29:03\nADDING: STRATEGY: PARABOLIC SAR ADAUSDT LIMIT ORDER 0.352 # 15.01.2024 T 00:30:56\nPENDING: STRATEGY: PARABOLIC SAR INTERNAL ORDER_ID 2120 ADAUSDT 0.352 15.01.2024 T 00:30:56\nUPDATE: STRATEGY: ICHIMOKU CLOUD LTCUSDT LIMIT SELL ORDER UPDATED TO 106.00 # 15.01.2024 T 00:31:42\nEXECUTED: STRATEGY: ICHIMOKU CLOUD INTERNAL ORDER_ID 2117 LTCUSDT 106.00 15.01.2024 T 00:31:42\nALERT: STRATEGY: RSI DIVERGENCE ETHUSDT PRICE INCREASED TO 1395.00 # 15.01.2024 T 00:33:19\nADDING: STRATEGY: HEIKEN-ASHI BCHUSDT LIMIT BUY 312.00 # 15.01.2024 T 00:34:07\nPENDING: STRATEGY: HEIKEN-ASHI INTERNAL ORDER_ID 2121 BCHUSDT 312.00 15.01.2024 T 00:34:07\nEXECUTED: STRATEGY: PIVOT POINTS INTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nADDING: STRATEGY: STOCH RSI BTCUSDT LIMIT ORDER 42099.25 # 15.01.2024 T 00:23:12\nEXECUTED: STRATEGY: STOCH RSI INTERNAL ORDER_ID 2115 BTCUSDT 42099.25 15.01.2024 T 00:23:12\nADDING: STRATEGY: MACD ETHUSDT MARKET BUY # 15.01.2024 T 00:24:05\nEXECUTED: STRATEGY: MACD INTERNAL ORDER_ID 2116 ETHUSDT MARKET BUY 15.01.2024 T 00:24:05\nADDING: STRATEGY: MOVING AVERAGE LTCUSDT LIMIT SELL 105.75 # 15.01.2024 T 00:25:30\nPENDING: STRATEGY: MOVING AVERAGE INTERNAL ORDER_ID 2117 LTCUSDT 105.75 15.01.2024 T 00:25:30\nCANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL ORDER_ID 2113 XRPUSDT 0.4523 15.01.2024 T 00:26:10\nADDING: STRATEGY: FIBONACCI RETRACEMENT XMRUSDT LIMIT BUY 215.40 # 15.01.2024 T 00:27:45\nEXECUTED: STRATEGY: FIBONACCI RETRACEMENT INTERNAL ORDER_ID 2118 XMRUSDT 215.40 15.01.2024 T 00:27:45\nALERT: STRATEGY: MEAN REVERSION BTCUSDT PRICE DROPPED TO 41800.00 # 15.01.2024 T 00:28:22\nREQUEST: STRATEGY: VOLUME ANALYSIS BTCUSDT MARKET SELL # 15.01.2024 T 00:29:03\nEXECUTED: STRATEGY: VOLUME ANALYSIS INTERNAL ORDER_ID 2119 BTCUSDT 41799.75 15.01.2024 T 00:29:03\nADDING: STRATEGY: PARABOLIC SAR ADAUSDT LIMIT ORDER 0.352 # 15.01.2024 T 00:30:56\nPENDING: STRATEGY: PARABOLIC SAR INTERNAL ORDER_ID 2120 ADAUSDT 0.352 15.01.2024 T 00:30:56\nUPDATE: STRATEGY: ICHIMOKU CLOUD LTCUSDT LIMIT SELL ORDER UPDATED TO 106.00 # 15.01.2024 T 00:31:42\nEXECUTED: STRATEGY: ICHIMOKU CLOUD INTERNAL ORDER_ID 2117 LTCUSDT 106.00 15.01.2024 T 00:31:42\nALERT: STRATEGY: RSI DIVERGENCE ETHUSDT PRICE INCREASED TO 1395.00 # 15.01.2024 T 00:33:19\nADDING: STRATEGY: HEIKEN-ASHI BCHUSDT LIMIT BUY 312.00 # 15.01.2024 T 00:34:07\nPENDING: STRATEGY: HEIKEN-ASHI INTERNAL ORDER_ID 2121 BCHUSDT 312.00 15.01.2024 T 00:34:07\nEXECUTED: STRATEGY: PIVOT POINTS INTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nCANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL ORDER_ID 2113 CANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL\n15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nINTERNAL ORDER_ID 2122 EOSUSDT 2.85 15.01.2024 T 00:35:50\nCANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL ORDER_ID 2113 CANCELLED: STRATEGY: BOLLINGER BANDS INTERNAL\nEXECUTED: STRATEGY: FIBONACCI RETRACEMENT INTERNAL ORDER_ID 2118 XMRUSDT 215.40 15.01.2024 T 00:27:45\nALERT: STRATEGY: MEAN REVERSION BTCUSDT PRICE DROPPED TO 41800.00 # 15.01.2024 T 00:28:22\nREQUEST: STRATEGY: VOLUME ANALYSIS BTCUSDT MARKET SELL # 15.01.2024 T 00:29:03\nEXECUTED: STRATEGY: FIBONACCI RETRACEMENT INTERNAL ORDER_ID 2118 XMRUSDT 215.40 15.01.2024 T 00:27:45\nALERT: STRATEGY: MEAN REVERSION BTCUSDT PRICE DROPPED TO 41800.00 # 15.01.2024 T 00:28:22\n ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'eurostile',
                                        color: Color(0xFF00C5FF),
                                        fontSize: 12.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Container(
                                width: 1012.0,
                                height: 43.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'eurostile',
                                            color: Color(0xFF00C5FF),
                                            useGoogleFonts: false,
                                          ),
                                      alignLabelWithHint: false,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'eurostile',
                                          color: Color(0xFF00C5FF),
                                          useGoogleFonts: false,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(width: 2.0)),
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
