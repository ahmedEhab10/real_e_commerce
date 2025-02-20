import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoding());
    var result = await authRepo.createUserWithEmailAndPassword(
      name: name,
      email:
          email, // احنا بنبعت هنا الاسم والايميل و الباسورد بس جوا الامبلينتيشن ريبو مش هاخد غير الي محتاجه الي هر الايميل والباسورد الي محتاجهم علشان ابعتهم للفايربيز
      password: password,
    );
    result.fold(
      (Failuers) {
        return emit(signUpfail(Failuers.Massage));
      },
      (UserEntity user) {
        emit(Success(user));
      },
    );
  }
}
