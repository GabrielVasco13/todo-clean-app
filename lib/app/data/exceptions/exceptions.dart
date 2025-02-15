import 'package:todo_app/app/utils/exceptions/exceptions.dart';

class LocalStorageExpection extends AppException {
  LocalStorageExpection(super.message, {super.stackTrace});
}
