import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  
  //Android
  static String androidFMCapiKey = dotenv.env['ANDROID_APIKEY'] ?? '';
  static String androidFMCappId = dotenv.env['ANDROID_APPID'] ?? '';
  static String androidFMCmessagingSenderId = dotenv.env['ANDROID_MESSAGINGSENDERID'] ?? '';
  static String androidFMCprojectId = dotenv.env['ANDROID_PROJECTID'] ?? '';
  static String androidFMCstorageBucket = dotenv.env['ANDROID_STORAGEBUCKET'] ?? '';

  //IOS
  static String iosFMCapiKey = dotenv.env['IOS_APIKEY'] ?? '';
  static String iosFMCappId = dotenv.env['IOS_APPID'] ?? '';
  static String iosFMCmessagingSenderId = dotenv.env['IOS_MESSAGINGSENDERID'] ?? '';
  static String iosFMCprojectId = dotenv.env['IOS_PROJECTID'] ?? '';
  static String iosFMCstorageBucket = dotenv.env['IOS_STORAGEBUCKET'] ?? '';
  static String iosFMCiosBundleId = dotenv.env['IOS_IOSBUNDLEID'] ?? '';

}