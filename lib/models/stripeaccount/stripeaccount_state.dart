
import 'package:wait4me/models/stripeaccount/stripeaccount_model.dart';

class StripeAccountState {
  bool? loading;
  dynamic error;
  StripeAccountModel? stripeaccount;

  StripeAccountState({
    this.loading,
    this.error,
    required this.stripeaccount,
  });
  factory StripeAccountState.initial() => StripeAccountState(
    loading: false,
    error: null,
    stripeaccount: null,
  );
}