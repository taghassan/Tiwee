// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:tiwee/src/core/injectable/configuration.dart' as _i633;
import 'package:tiwee/src/core/injectable/injectable_module.dart' as _i324;
import 'package:tiwee/src/core/injectable/injection.module.dart' as _i148;

const String _staging = 'staging';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i148.TiweePackageModule().init(gh);
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dioInstance);
    gh.lazySingleton<_i974.Logger>(() => injectableModule.logger);
    gh.lazySingleton<_i633.Configuration>(
      () => _i633.StagingConfiguration(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i633.Configuration>(
      () => _i633.DevConfiguration(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i633.Configuration>(
      () => _i633.ProductionConfiguration(),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$InjectableModule extends _i324.InjectableModule {}
