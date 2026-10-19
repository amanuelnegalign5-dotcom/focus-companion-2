class EthiopianDate {
  final int year, month, day;
  const EthiopianDate(this.year,this.month,this.day);
  static const months=['','መስከረም','ጥቅምት','ኅዳር','ታኅሣሥ','ጥር','የካቲት','መጋቢት','ሚያዝያ','ግንቦት','ሰኔ','ሐምሌ','ነሐሴ','ጳጉሜን'];
  String get monthName=>months[month];
  @override String toString()=>'$day $monthName $year';
}
EthiopianDate gregorianToEthiopian(DateTime d){
  final g=DateTime(d.year,d.month,d.day); final ny=DateTime(g.year,9,11);
  final start=g.isBefore(ny)?DateTime(g.year-1,9,12):ny;
  final y=g.isBefore(ny)?g.year-8:g.year-7; final days=g.difference(start).inDays;
  return EthiopianDate(y,days~/30+1,days%30+1);
}
