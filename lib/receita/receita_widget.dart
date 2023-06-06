import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'receita_model.dart';
export 'receita_model.dart';

class ReceitaWidget extends StatefulWidget {
  const ReceitaWidget({
    Key? key,
    this.receita,
  }) : super(key: key);

  final dynamic receita;

  @override
  _ReceitaWidgetState createState() => _ReceitaWidgetState();
}

class _ReceitaWidgetState extends State<ReceitaWidget> {
  late ReceitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceitaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 2.0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFBC002D),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: Color(0x00FFFFFF),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.4, 0.0),
                          child: Text(
                            'Receitas Japonesas',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Courgette',
                                  color: Colors.white,
                                  fontSize: 26.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FlutterFlowExpandedImageView(
                        image: Image.network(
                          getJsonField(
                            widget.receita,
                            r'''$.imagem''',
                          ),
                          fit: BoxFit.contain,
                        ),
                        allowRotation: false,
                        tag: getJsonField(
                          widget.receita,
                          r'''$.imagem''',
                        ),
                        useHeroAnimation: true,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: getJsonField(
                    widget.receita,
                    r'''$.imagem''',
                  ),
                  transitionOnUserGestures: true,
                  child: Image.network(
                    getJsonField(
                      widget.receita,
                      r'''$.imagem''',
                    ),
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                          getJsonField(
                            widget.receita,
                            r'''$.nome''',
                          ).toString(),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Courgette',
                                    color: Color(0xFFBC002D),
                                    fontSize: 24.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_jhxquorq.json',
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      Text(
                        getJsonField(
                          widget.receita,
                          r'''$.ingrediente''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.local_fire_department,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        getJsonField(
                          widget.receita,
                          r'''$.dificuldade''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.timelapse,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        getJsonField(
                          widget.receita,
                          r'''$.tempo''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Share.share(
                        'Baixe o aplicativo NOME DO APP e dê uma olhada nessa receita de ${getJsonField(
                          widget.receita,
                          r'''$.nome''',
                        ).toString()}! Baixe na sua loja de aplicativos: https://play.google.com/store/apps/details?id=',
                        sharePositionOrigin: getWidgetBoundingBox(context),
                      );
                    },
                    text: 'Compartilhar',
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      color: Color(0xFFBC002D),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 0.0, 0.0),
                  child: Text(
                    'Ingredientes',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Courgette',
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final lvIngredientes = getJsonField(
                      widget.receita,
                      r'''$.ingredientes''',
                    ).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: lvIngredientes.length,
                      itemBuilder: (context, lvIngredientesIndex) {
                        final lvIngredientesItem =
                            lvIngredientes[lvIngredientesIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AutoSizeText(
                                  '${lvIngredientesIndex.toString()}   ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFFBC002D),
                                        fontSize: 30.0,
                                      ),
                                ),
                                Expanded(
                                  child: AutoSizeText(
                                    getJsonField(
                                      lvIngredientesItem,
                                      r'''$''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 0.0, 0.0),
                  child: Text(
                    'Modo de Preparo',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Courgette',
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 100.0),
                child: Builder(
                  builder: (context) {
                    final lvPreparo = getJsonField(
                      widget.receita,
                      r'''$.preparo''',
                    ).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: lvPreparo.length,
                      itemBuilder: (context, lvPreparoIndex) {
                        final lvPreparoItem = lvPreparo[lvPreparoIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AutoSizeText(
                                  '${lvPreparoIndex.toString()}   ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFFBC002D),
                                        fontSize: 30.0,
                                      ),
                                ),
                                Expanded(
                                  child: Text(
                                    getJsonField(
                                      lvPreparoItem,
                                      r'''$''',
                                    ).toString(),
                                    maxLines: 3,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
