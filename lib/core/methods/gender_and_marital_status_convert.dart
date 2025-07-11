String convertArabicValue(String input) {
  final normalizedInput = input.trim().toLowerCase();

  const genderMap = {'ذكر': 'male', 'أنثى': 'female'};

  const maritalStatusMap = {
    'أعزب': 'single',
    'عزباء': 'single',
    'متزوج': 'married',
    'متزوجة': 'married',
    'مطلق': 'divorced',
    'مطلقة': 'divorced',
    'أرمل': 'widowed',
    'أرملة': 'widowed',
  };

  if (genderMap.containsKey(normalizedInput)) {
    return genderMap[normalizedInput]!;
  } else if (maritalStatusMap.containsKey(normalizedInput)) {
    return maritalStatusMap[normalizedInput]!;
  } else {
    return 'unknown';
  }
}
