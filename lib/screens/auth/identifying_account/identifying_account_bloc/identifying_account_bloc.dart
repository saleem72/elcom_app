import 'package:bloc/bloc.dart';
import 'package:elcom_app/models/phone_number.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../models/failure.dart';

part 'identifying_account_event.dart';
part 'identifying_account_state.dart';

class IdentifyingAccountBloc
    extends Bloc<IdentifyingAccountEvent, IdentifyingAccountState> {
  IdentifyingAccountBloc() : super(const IdentifyingAccountState()) {
    on<IdentifyingAccountPhoneNumberChanged>(_phoneNumberChanged);
    on<IdentifyingAccountPhoneNumberUnfocused>(_phoneNumberUnfocused);
    on<IdentifyingAccountFormSubmitted>(_formSubmitted);
  }

  _phoneNumberChanged(
    IdentifyingAccountPhoneNumberChanged event,
    Emitter<IdentifyingAccountState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(state.copyWith(
      phoneNumber:
          phoneNumber.valid ? phoneNumber : PhoneNumber.pure(event.phoneNumber),
      status: Formz.validate([phoneNumber]),
    ));
  }

  _phoneNumberUnfocused(
    IdentifyingAccountPhoneNumberUnfocused event,
    Emitter<IdentifyingAccountState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(state.phoneNumber.value);
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      status: Formz.validate([phoneNumber]),
    ));
  }

  _formSubmitted(
    IdentifyingAccountFormSubmitted event,
    Emitter<IdentifyingAccountState> emit,
  ) {}
}
