import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'precautions_back_card.dart';
import 'precautions_front_card.dart';

class PrecautionsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 20.0,
      children: [
        FlipCard(
          front: PrecautionsFrontCard(
            imageUrl: 'assets/images/precautions_person.png',
          ),
          back: PrecautionsBackCard(
            title: 'Mask',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ante libero. Morbi vulputate ut est nec tincidunt.',
          ),
        ),
        FlipCard(
          front: PrecautionsFrontCard(
            imageUrl: 'assets/images/precautions_soap.png',
          ),
          back: PrecautionsBackCard(
            title: 'Сleanliness',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ante libero. Morbi vulputate ut est nec tincidunt. Aliquam faucibus dolor sit amet felis tincidunt, nec varius nunc vehicula.',
          ),
        ),
        FlipCard(
          front: PrecautionsFrontCard(
            imageUrl: 'assets/images/precautions_antisept.png',
          ),
          back: PrecautionsBackCard(
            title: 'Disinfection',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ante libero. Morbi vulputate ut est nec tincidunt. Aliquam faucibus dolor sit amet felis tincidunt, nec varius nunc vehicula.',
          ),
        ),
        FlipCard(
          front: PrecautionsFrontCard(
            imageUrl: 'assets/images/precautions_hands.png',
          ),
          back: PrecautionsBackCard(
            title: 'Gloves',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ante libero. Morbi vulputate ut est nec tincidunt. Aliquam faucibus dolor sit amet felis tincidunt, nec varius nunc vehicula.',
          ),
        ),
      ],
    );
  }
}




