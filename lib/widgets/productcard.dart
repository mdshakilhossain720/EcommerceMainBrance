

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../contsants/them.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 2),
            ],
          ),
          margin: const EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12),
                  color: kLightBackground,
                  child: Image.asset("assets/product/watch.jpg"),
                ),
              ),
              const Gap(4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Productvchvdsfiuekcn",
                    style: AppTheme.kCardTitle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                   "xzchujxyADUsakfchadofhkdasncjdgaufwjkdcbujxhfdmsdnc jxsfcdsnmvcuiwHDFEKJD",
                    style: AppTheme.kBodyText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
    Text(
      '\$4156',
      style: AppTheme.kCardTitle,
    ),
    IconButton(
        onPressed: () {
         
        },
        icon: Icon(
        
               Icons.check_circle,
             
          size: 30,
        ))
                    ],
                  )
                ]),
              ),
            ],
          ),
        );
  }
}
