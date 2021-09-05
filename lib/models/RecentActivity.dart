class RecentActivity {
  final String icon;
  final String label;
  final String amount;
  RecentActivity({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

List<RecentActivity> recentActivities = [
  RecentActivity(icon: 'assets/drop.svg', label: 'Water Bill', amount: "\$120"),
  RecentActivity(
      icon: 'assets/salary.svg', label: 'Income Salary', amount: "\$4500"),
  RecentActivity(
      icon: 'assets/salary.svg', label: 'Income Salary', amount: "\$4500"),
  RecentActivity(
      icon: 'assets/electricity.svg', label: 'Electric Bill', amount: "\$150"),
  RecentActivity(
      icon: 'assets/wifi.svg', label: 'Internet Bill', amount: "\$60")
];
