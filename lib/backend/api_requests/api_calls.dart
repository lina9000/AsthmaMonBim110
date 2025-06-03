import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendDataCall {
  static Future<ApiCallResponse> call({
    int? height = 55,
    int? weight = 150,
    int? age = 23,
    int? sex = 1,
    int? asthma = 1,
    String? audio = '',
  }) async {
    final ffApiRequestBody = '''
{
  "audio": "${escapeStringForJson(audio)}",
  "age": "${age}",
  "sex": "${sex}",
  "height": "${height}",
  "weight": "${weight}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'send data',
      apiUrl: 'http://pdatlas.synology.me:3000/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? fVCapi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.FVC''',
      ));
  static String? pEFapi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.PEF''',
      ));
  static String? ratioapi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Ratio''',
      ));
  static double? fev1(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.FEV1''',
      ));
}

class ChartNewCall {
  static Future<ApiCallResponse> call({
    List<int>? actscoreList,
    List<String>? actDateList,
  }) async {
    final actscore = _serializeList(actscoreList);
    final actDate = _serializeList(actDateList);

    final ffApiRequestBody = '''
{
  "chart": {
    "type": "line",
    "data": {
      "labels": ${actDate},
      "datasets": [
        {
          "label": "ACT Values",
          "data": ${actscore},
          "fill": false,
          "borderColor": "rgb(75, 192, 192)",
          "tension": 0.1
        }
      ]
    },
    "options": {
      "plugins": {
        "datalabels": {
          "display": true,
          "align": "top",
          "font": {
            "weight": "bold"
          }
        }
      }
    },
    "plugins": [
      "chartjs-plugin-datalabels"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chart new ',
      apiUrl: 'https://quickchart.io/chart/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aCtchart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class FVCChartCall {
  static Future<ApiCallResponse> call({
    List<double>? fVCSCoreList,
    List<String>? testdateList,
  }) async {
    final fVCSCore = _serializeList(fVCSCoreList);
    final testdate = _serializeList(testdateList);

    final ffApiRequestBody = '''
{
  "chart": {
    "type": "line",
    "data": {
      "labels": ${testdate},
      "datasets": [
        {
          "label": "FVC Score",
          "data": ${fVCSCore},
          "fill": false,
          "borderColor": "rgb(75, 192, 192)",
          "tension": 0.1
        }
      ]
    },
    "options": {
      "plugins": {
        "datalabels": {
          "display": true,
          "align": "top",
          "font": {
            "weight": "bold"
          }
        }
      }
    },
    "plugins": [
      "chartjs-plugin-datalabels"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FVC chart',
      apiUrl: 'https://quickchart.io/chart/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aCtchart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class FVCOneChartCall {
  static Future<ApiCallResponse> call({
    List<double>? fEV1ScoreList,
    List<String>? testDateList,
  }) async {
    final fEV1Score = _serializeList(fEV1ScoreList);
    final testDate = _serializeList(testDateList);

    final ffApiRequestBody = '''
{
  "chart": {
    "type": "line",
    "data": {
      "labels": ${testDate},
      "datasets": [
        {
          "label": "FEV1 Score",
          "data": ${fEV1Score},
          "fill": false,
          "borderColor": "rgb(75, 192, 192)",
          "tension": 0.1
        }
      ]
    },
    "options": {
      "plugins": {
        "datalabels": {
          "display": true,
          "align": "top",
          "font": {
            "weight": "bold"
          }
        }
      }
    },
    "plugins": [
      "chartjs-plugin-datalabels"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FVC one Chart',
      apiUrl: 'https://quickchart.io/chart/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aCtchart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class RatioCHartCall {
  static Future<ApiCallResponse> call({
    List<double>? ratioList,
    List<String>? testDateList,
  }) async {
    final ratio = _serializeList(ratioList);
    final testDate = _serializeList(testDateList);

    final ffApiRequestBody = '''
{
  "chart": {
    "type": "line",
    "data": {
      "labels": ${testDate},
      "datasets": [
        {
          "label": "Ratio",
          "data": ${ratio},
          "fill": false,
          "borderColor": "rgb(75, 192, 192)",
          "tension": 0.1
        }
      ]
    },
    "options": {
      "plugins": {
        "datalabels": {
          "display": true,
          "align": "top",
          "font": {
            "weight": "bold"
          }
        }
      }
    },
    "plugins": [
      "chartjs-plugin-datalabels"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RatioCHart',
      apiUrl: 'https://quickchart.io/chart/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? aCtchart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
