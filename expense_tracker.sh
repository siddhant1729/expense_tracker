#!/bin/bash

FILE="expenses.csv"

# Create file if it doesn't exist
if [ ! -f "$FILE" ]; then
  echo "Date,Amount,Category,Description" > "$FILE"
fi

add_expense() {
  read -p "Enter amount: " amount
  read -p "Enter category (e.g., Food, Travel, Bills): " category
  read -p "Enter description: " description
  date=$(date +"%Y-%m-%d")

  echo "$date,$amount,$category,$description" >> "$FILE"
  echo "Expense added successfully!"
}

view_expenses() {
  column -t -s, "$FILE"
}

search_expenses() {
  read -p "Search by (category/date): " type
  read -p "Enter search term: " term
  grep -i "$term" "$FILE" || echo "No records found."
}

generate_report() {
  echo "===== Expense Summary ====="
  echo "Total Expenses:"
  awk -F',' 'NR>1 {sum+=$2} END {print "Total = " sum}' "$FILE"

  echo "Average Expense:"
  awk -F',' 'NR>1 {sum+=$2; count++} END {print "Average = " sum/count}' "$FILE"

  echo "Category-wise Summary:"
  awk -F',' 'NR>1 {cat[$3]+=$2} END {for (c in cat) print c ": " cat[c]}' "$FILE"
}

while true; do
  echo
  echo "========== Expense Tracker =========="
  echo "1. Add New Expense"
  echo "2. View All Expenses"
  echo "3. Search Expenses"
  echo "4. Generate Report"
  echo "5. Exit"
  echo "====================================="
  read -p "Enter choice: " choice

  case $choice in
    1) add_expense ;;
    2) view_expenses ;;
    3) search_expenses ;;
    4) generate_report ;;
    5) echo "Goodbye!"; exit ;;
    *) echo "Invalid choice!" ;;
  esac
done
