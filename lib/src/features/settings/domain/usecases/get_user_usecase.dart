import 'package:dartz/dartz.dart';
import 'package:habita/core/common/entities/user.dart';
import 'package:habita/core/failures/ifailure.dart';
import 'package:habita/core/usecase/no_params.dart';
import 'package:habita/core/usecase/usecase.dart';
import 'package:habita/src/features/settings/domain/repo/isettings_repo.dart';

class GetCurrentUser implements Usecase<SupaUser, NoParams> {
  final ISettingsRepo repository;

  const GetCurrentUser({required this.repository});

  @override
  Future<Either<Failure, SupaUser>> call(NoParams params) async {
    return await repository.getCurrentUser();
  }
}
