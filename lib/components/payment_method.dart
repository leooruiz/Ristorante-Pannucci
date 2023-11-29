import 'package:flutter/material.dart';
import 'package:panucci_ristorante/themes/app_colors.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              const Image(
                width: 30,
                image: AssetImage("assets/images/visa.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "VISA Classic",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "****-6789",
                      style: TextStyle(
                          color: AppColors.paymentMethodCardNumberColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}
