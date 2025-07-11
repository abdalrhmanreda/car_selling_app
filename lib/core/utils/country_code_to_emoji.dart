String countryCodeToEmoji(String countryCode) {
  return countryCode
      .toUpperCase()
      .codeUnits
      .map((e) => String.fromCharCode(e + 127397))
      .join();
}
