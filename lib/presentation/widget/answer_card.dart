







import 'package:exo2/configs/AppColors.dart';
import 'package:exo2/presentation/widget/base_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AnswerCard extends StatelessWidget{

  final bool isSelected;
  final Function() onTap;
  final String titleLabel;


  const AnswerCard({
    required this.titleLabel,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
        titleLabel: titleLabel,
        borderColor: AppColors.darkSlateGrayBorder,
        icon: Icons.check_circle,
        iconColor: isSelected ? AppColors.dodgerBlue : AppColors.darkSlateBlue,
        onTap: onTap
    );
  }




}