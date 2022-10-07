class ListObject {
  final String title, subtitle, img;

  const ListObject(this.title, this.subtitle, this.img);
}

double valueFromPercentageInRange({required final double min, max, percentage}) {
  return percentage * (max - min) + min;
}

double percentageFromValueInRange({required final double min, max, value}) {
  return (value - min) / (max - min);
}
