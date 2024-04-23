abstract class UseCase<Type, params> {
  // ignore: avoid_types_as_parameter_names
  Future<Type> call({params});
}
