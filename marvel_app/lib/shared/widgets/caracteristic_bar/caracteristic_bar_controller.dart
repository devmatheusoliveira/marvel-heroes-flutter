class CaracteristicBarController {
  String convertBirthYearsOld(String birth) {
    return "${DateTime.now().year - int.parse(birth)} anos";
  }
}
