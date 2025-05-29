import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SpotsManagementAPI Group Code

class SpotsManagementAPIGroup {
  static String getBaseUrl() =>
      'https://f0cb-2c0f-f698-4144-408e-1d20-fa20-9a24-1504.ngrok-free.app';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'ngrok-skip-browser-warning': 'true',
  };
  static GetParkingSpotByIdCall getParkingSpotByIdCall =
      GetParkingSpotByIdCall();
  static UpdateParkingSpotCall updateParkingSpotCall = UpdateParkingSpotCall();
  static DeleteParkingSpotCall deleteParkingSpotCall = DeleteParkingSpotCall();
  static GetAllParkingSpotsCall getAllParkingSpotsCall =
      GetAllParkingSpotsCall();
  static CreateParkingSpotCall createParkingSpotCall = CreateParkingSpotCall();
  static ResetAllSpotsCall resetAllSpotsCall = ResetAllSpotsCall();
  static GetPercentageCall getPercentageCall = GetPercentageCall();
  static NonBookedPercentageCall nonBookedPercentageCall =
      NonBookedPercentageCall();
}

class GetParkingSpotByIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getParkingSpotById',
      apiUrl: '${baseUrl}/api/spots/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? available(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.available''',
      ));
}

class UpdateParkingSpotCall {
  Future<ApiCallResponse> call({
    bool? available = true,
    int? id,
  }) async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "available": ${available}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateParkingSpot',
      apiUrl: '${baseUrl}/api/spots/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
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
}

class DeleteParkingSpotCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteParkingSpot',
      apiUrl: '${baseUrl}/api/spots/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllParkingSpotsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllParkingSpots',
      apiUrl: '${baseUrl}/api/spots',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<bool>? availability(dynamic response) => (getJsonField(
        response,
        r'''$[:].available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? spotid(dynamic response) => (getJsonField(
        response,
        r'''$[0].spot_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CreateParkingSpotCall {
  Future<ApiCallResponse> call({
    String? department = '',
    int? number,
    bool? available = true,
  }) async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "department": "${escapeStringForJson(department)}",
  "number": ${number},
  "available": ${available}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createParkingSpot',
      apiUrl: '${baseUrl}/api/spots',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
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
}

class ResetAllSpotsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'resetAllSpots',
      apiUrl: '${baseUrl}/api/spots/reset',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPercentageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPercentage',
      apiUrl: '${baseUrl}/api/spots/booked-percentage',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic percentage(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class NonBookedPercentageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotsManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'nonBookedPercentage',
      apiUrl: '${baseUrl}/api/spots/non-booked-percentage',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic nonBooked(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End SpotsManagementAPI Group Code

/// Start UserManagementAPI Group Code

class UserManagementAPIGroup {
  static String getBaseUrl() =>
      'https://f0cb-2c0f-f698-4144-408e-1d20-fa20-9a24-1504.ngrok-free.app';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'ngrok-skip-browser-warning': 'true',
  };
  static GetUserByIdCall getUserByIdCall = GetUserByIdCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static GetAllUsersCall getAllUsersCall = GetAllUsersCall();
  static AddUserrCall addUserrCall = AddUserrCall();
}

class GetUserByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = UserManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserById',
      apiUrl: '${baseUrl}/api/users/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? userFirstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? userLastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? userPhonNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phoneNumber''',
      ));
  String? bookedSpotID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookedSpotId''',
      ));
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? phoneNumber = '',
    int? bookedSpotID,
  }) async {
    final baseUrl = UserManagementAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "firstName": "${escapeStringForJson(firstName)}",
  "lastName": "${escapeStringForJson(lastName)}",
  "email": "${escapeStringForJson(email)}",
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "bookedSpotId": "${bookedSpotID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl: '${baseUrl}/api/users/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
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
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = UserManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser ',
      apiUrl: '${baseUrl}/api/users/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUsersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UserManagementAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllUsers ',
      apiUrl: '${baseUrl}/api/users',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phoneNumber''',
      ));
}

class AddUserrCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? phoneNumber = '',
    int? bookedSpotId,
    String? id = '',
  }) async {
    final baseUrl = UserManagementAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "firstName": "${escapeStringForJson(firstName)}",
  "lastName": "${escapeStringForJson(lastName)}",
  "email": "${escapeStringForJson(email)}",
  "phoneNumber": "${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddUserr',
      apiUrl: '${baseUrl}/api/users',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
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
}

/// End UserManagementAPI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
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
