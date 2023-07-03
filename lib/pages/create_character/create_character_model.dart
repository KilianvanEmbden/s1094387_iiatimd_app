import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateCharacterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  Color? colorPicked;
  // State field(s) for CharName widget.
  TextEditingController? charNameController;
  String? Function(BuildContext, String?)? charNameControllerValidator;
  // State field(s) for CharRace widget.
  String? charRaceValue;
  FormFieldController<String>? charRaceValueController;
  // State field(s) for CharClass widget.
  String? charClassValue;
  FormFieldController<String>? charClassValueController;
  // State field(s) for CharStr widget.
  int? charStrValue;
  // State field(s) for CharDex widget.
  int? charDexValue;
  // State field(s) for CharCon widget.
  int? charConValue;
  // State field(s) for CharInt widget.
  int? charIntValue;
  // State field(s) for CharWis widget.
  int? charWisValue;
  // State field(s) for CharCha widget.
  int? charChaValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    charNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
