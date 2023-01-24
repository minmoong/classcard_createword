// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createword.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CreateWord implements CreateWord {
  _CreateWord(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://proxy.cors.sh/https://classcard.net/CreateWord';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SaveSet> saveSet(params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<SaveSet>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/saveSet',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SaveSet.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SaveCard2> saveCard2(dataObj) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'data_obj': dataObj};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SaveCard2>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/saveCard2',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SaveCard2.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
