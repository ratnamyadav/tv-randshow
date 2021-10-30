// Mocks generated by Mockito 5.0.16 from annotations
// in tv_randshow/test/core/services/manage_files_service_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:tv_randshow/core/models/tvshow_actions.dart' as _i2;
import 'package:tv_randshow/core/models/tvshow_details.dart' as _i5;
import 'package:tv_randshow/core/services/app_service.dart' as _i6;
import 'package:tv_randshow/core/services/databases/i_database_service.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeTvshowActions_0 extends _i1.Fake implements _i2.TvshowActions {}

/// A class which mocks [IDatabaseService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIDatabaseService extends _i1.Mock implements _i3.IDatabaseService {
  MockIDatabaseService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> saveTvshow(_i5.TvshowDetails? tvshowDetails) =>
      (super.noSuchMethod(Invocation.method(#saveTvshow, [tvshowDetails]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<List<_i5.TvshowDetails>> getTvshows() =>
      (super.noSuchMethod(Invocation.method(#getTvshows, []),
              returnValue:
                  Future<List<_i5.TvshowDetails>>.value(<_i5.TvshowDetails>[]))
          as _i4.Future<List<_i5.TvshowDetails>>);
  @override
  _i4.Future<bool> deleteTvshow(int? id) =>
      (super.noSuchMethod(Invocation.method(#deleteTvshow, [id]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [AppService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppService extends _i1.Mock implements _i6.AppService {
  MockAppService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get timesOpenLink =>
      (super.noSuchMethod(Invocation.getter(#timesOpenLink), returnValue: 0)
          as int);
  @override
  set timesOpenLink(int? _timesOpenLink) =>
      super.noSuchMethod(Invocation.setter(#timesOpenLink, _timesOpenLink),
          returnValueForMissingStub: null);
  @override
  _i4.Future<String> getVersion() =>
      (super.noSuchMethod(Invocation.method(#getVersion, []),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  _i4.Future<_i2.TvshowActions> initUniLinks() => (super.noSuchMethod(
          Invocation.method(#initUniLinks, []),
          returnValue: Future<_i2.TvshowActions>.value(_FakeTvshowActions_0()))
      as _i4.Future<_i2.TvshowActions>);
  @override
  _i4.Future<bool> hasStoragePermission() =>
      (super.noSuchMethod(Invocation.method(#hasStoragePermission, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<String> saveFile(String? fileName, String? json) =>
      (super.noSuchMethod(Invocation.method(#saveFile, [fileName, json]),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  String toString() => super.toString();
}
