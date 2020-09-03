import 'package:covid19_app/models/advice_block.dart';
import 'package:flutter/material.dart';

import 'models/symptom.dart';
import 'models/user.dart';

List<Symptom> symptomsList = [
  Symptom(title: 'Headache', imagrUrl: 'assets/images/headache.png'),
  Symptom(title: 'Cough', imagrUrl: 'assets/images/cough.png'),
  Symptom(title: 'Vomit', imagrUrl: 'assets/images/vomit.png'),
  Symptom(title: 'Runny nose', imagrUrl: 'assets/images/runny_nose.png'),
  Symptom(title: 'Fever', imagrUrl: 'assets/images/fever.png'),
  Symptom(title: 'Sore throat', imagrUrl: 'assets/images/sore_throat.png'),
];

List<String> prohibition = [
  'assets/images/prohibition_airoports.png',
  'assets/images/prohibition_moleculs.png',
  'assets/images/prohibition_socium.png',
  'assets/images/prohibition_touch.png'
];

List<AdviceBlock> listWithAdvices = [
  AdviceBlock(
      blockColor: Colors.red[200],
      imageUrl: 'assets/images/advice_virus.png',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a risus nisl. Aenean elementum efficitur nisl sit amet scelerisque.'),
  AdviceBlock(
      blockColor: Colors.tealAccent[100],
      imageUrl: 'assets/images/advice_bank.png',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a risus nisl. Aenean elementum efficitur nisl sit amet scelerisque.'),
  AdviceBlock(
      blockColor: Colors.grey[200],
      imageUrl: 'assets/images/advice_temperature.png',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a risus nisl. Aenean elementum efficitur nisl sit amet scelerisque.'),
  AdviceBlock(
      blockColor: Colors.tealAccent[100],
      imageUrl: 'assets/images/advice_tree.png',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a risus nisl. Aenean elementum efficitur nisl sit amet scelerisque.'),
];

User user = User(
    firstName: 'Oleh',
    secondName: 'Kononenko',
    imageUrl: 'http://i.imgur.com/zL4Krbz.jpg',
    country:'Ukraine', city:'Lviv');
