String formatArabicDateRange(DateTime date) {
  const months = [
    '',
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];

  String formatDate(DateTime date) {
    return '${date.day} ${months[date.month]} , ${date.year}';
  }

  return '${formatDate(date)}';
}
