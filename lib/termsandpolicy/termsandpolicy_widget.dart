import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsandpolicy_model.dart';
export 'termsandpolicy_model.dart';

class TermsandpolicyWidget extends StatefulWidget {
  const TermsandpolicyWidget({super.key});

  static String routeName = 'termsandpolicy';
  static String routePath = '/termsandpolicy';

  @override
  State<TermsandpolicyWidget> createState() => _TermsandpolicyWidgetState();
}

class _TermsandpolicyWidgetState extends State<TermsandpolicyWidget> {
  late TermsandpolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandpolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Container(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(SettingsWidget.routeName);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
          title: Container(
            child: Text(
              'Terms of Service & Privacy Policy',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Text(
                          'Terms of Service',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x20000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Terms of Service for AsthmaMon\n\n\nWelcome to AsthmaMon! These Terms of Service (\"Terms\") govern your use of our mobile application  and services provided by AsthmaMon . By accessing or using the app, you agree to these Terms.\n\n1. Important Disclaimer\n\nAsthmaMon is not a medical device and is not intended to diagnose, treat, cure, or prevent any disease. The app uses voice recordings and other personal inputs (such as age, gender, height, weight, and asthma status) to provide insights, but it is not a substitute for professional medical advice.\nWe are not licensed medical professionals. Always consult your doctor or healthcare provider before making any medical decisions or changes to your treatment.\n\n2. Eligibility\n\nThe app is intended for users of all ages, including children under 13, but parental or guardian supervision is required for users under the age of 13. By using the app, you confirm that you are either:\n\n13 years of age or older, or\nA parent/guardian has given consent for a child under 13 to use the app.\n3. Accounts and Authentication\n\nTo use AsthmaMon, you must sign in using a Gmail account. You are responsible for keeping your account credentials secure. We are not liable for any unauthorized access to your account caused by your actions.\n\n4. Data Usage and Storage\n\nBy using the app, you consent to the collection and storage of the following information:\n\nVoice recordings for analysis\nDemographic and health-related data: age, gender, height, weight, asthma status\nYour data is securely stored using Google Firebase and Firestore, and analyzed through an external API. More details about how we handle your data are provided in our Privacy Policy.\n\n5. Acceptable Use\n\nYou agree not to misuse the app, including but not limited to:\n\nUsing the app for unlawful purposes\nAttempting to reverse engineer or tamper with the app\nSubmitting false information or impersonating others\n6. Modifications to the App or Terms\n\nWe may update the app or these Terms at any time. If we make significant changes, we will notify users through the app or email. Continued use of the app after changes have been made means you accept those changes.\n\n7. Limitation of Liability\n\nAsthmaMon and its creators shall not be liable for any harm, injury, or loss resulting from the use of the app or reliance on its outputs. You use the app at your own risk.\n\n8. Contact Us\n\nIf you have any questions about these Terms, please contact us at:\n Casguevara@ucdavis.edu',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 32.0, 0.0, 16.0),
                        child: Text(
                          'Privacy Policy',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x20000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Privacy Policy for AsthmaMon:\n\nAsthmaMon  respects your privacy and is committed to protecting the personal information you provide. This Privacy Policy explains how we collect, use, store, and share your information when you use our mobile application .\n\n1. Information We Collect\n\nWhen you use AsthmaMon, we may collect the following types of personal information:\n\nVoice recordings for lung function analysis\nDemographic data: height, weight, gender, age\nHealth status: whether the user has asthma\nAuthentication data: your Gmail account used to log in\n2. How We Use Your Information\n\nWe use your information to:\n\nAnalyze voice recordings and provide feedback\nImprove prediction accuracy through an API call\nCreate a personalized user experience\nStore your health data securely for future reference\nOperate, maintain, and improve the App and our services\n3. Children’s Privacy\n\nAsthmaMon is available to users under the age of 13. However, we do not knowingly collect personal information from children under 13 without parental consent. If we learn that we have collected personal data from a child under 13 without verification of parental consent, we will delete that data promptly. Parents or guardians may contact us at  Casguevara@ucdavis.edu to request review or deletion of their child’s information.\n\n4. Data Storage and Security\n\nYour data, including voice recordings and personal information, is stored securely using Google Firebase and Firestore. While we use commercially reasonable safeguards, no method of transmission or storage is 100% secure. We cannot guarantee the absolute security of your data.\n\n5. Third-Party Services\n\nWe use third-party services such as:\n\nGoogle Firebase (authentication, storage)\nExternal APIs to process voice data and make predictions\nThese services may collect limited information necessary to perform their functions. Their use is governed by their own privacy policies.\n\n6. Data Sharing\n\nWe do not sell, rent, or trade your personal information. We may share your data only when:\n\nRequired by law or legal request\nNeeded to protect your safety or the safety of others\nUsed for internal analysis or improvement \n7. User Rights and Choices\n\nYou may:\n\nAccess, update, or delete your personal information\nRequest a copy of your data\nWithdraw your consent at any time (which may affect your ability to use the app)\nTo make a request, please contact us at  Casguevara@ucdavis.edu.\n\n8. Changes to This Privacy Policy\n\nWe may update this Privacy Policy from time to time. We will notify users of significant changes through the App or via email. Continued use of the App after changes are posted indicates your acceptance.\n\n9. Contact Us\n\nIf you have any questions about this Privacy Policy or your data, please contact us at: Casguevara@ucdavis.edu',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Last updated: May 2023',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
