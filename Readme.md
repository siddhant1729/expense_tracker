# 💸 Expense Tracker (Bash CLI)

A simple and powerful command-line **Expense Tracker** built entirely using **Bash scripting**.  
It lets you add, view, search, and generate reports for your daily expenses — all stored in a CSV file.  

---

## 🚀 Features

✅ Add new expenses with amount, category, and description  
✅ View all expenses in a clean, tabular format  
✅ Search expenses by category or date  
✅ Generate a summary report:
   - Total expense  
   - Average expense  
   - Category-wise breakdown  

---

## 📂 File Structure

expense_tracker/
├── expense_tracker.sh # Main script
├── expenses.csv # Data file (auto-created)
└── README.md # Project documentation

yaml
Copy code

---

## ⚙️ How It Works

The script creates an `expenses.csv` file automatically (if not present) with columns:
Date,Amount,Category,Description

yaml
Copy code

Every new entry is appended to this file. Reports and summaries are generated using `awk` and `grep`.

---

## 🧠 Requirements

Make sure you’re using **Linux / WSL / macOS** with:
- `bash`  
- `awk`  
- `grep`  
- `column`

All of these are preinstalled on most Unix-based systems.

---

## 🧩 How to Run

1. Clone this repository:
   ```bash
   git clone git@github.com:siddhant1729/expense_tracker.git
   cd expense_tracker
Give execution permission:

bash
Copy code
chmod +x expense_tracker.sh
Run the script:

bash
Copy code
./expense_tracker.sh
💡 Example Usage
markdown
Copy code
========== Expense Tracker ==========
1. Add New Expense
2. View All Expenses
3. Search Expenses
4. Generate Report
5. Exit
====================================
Enter choice: 1
Enter amount: 250
Enter category: Food
Enter description: Lunch with friends
Expense added successfully!
makefile
Copy code
$ ./expense_tracker.sh
===== Expense Summary =====
Total = 1800
Average = 360
Category-wise Summary:
Food: 750
Travel: 600
Bills: 450
🧰 Tech Used
Bash — for scripting and automation

awk, grep, column — for data parsing and formatting

🏁 Future Enhancements
 Add data export in JSON or Excel format

 Integrate charts using gnuplot or python

 Add budget limit alerts per category

👨‍💻 Author
Siddhant
📍 3rd Semester CSE Undergrad | JIIT Noida
💼 LinkedIn • GitHub

⭐ If you like this project, consider starring it on GitHub!
yaml
Copy code

---

## ✅ **How to Add It**
1. Inside your project folder (`expense_tracker/`), create the file:
   ```bash
   nano README.md
Paste the content above.

Save and exit (Ctrl + O, then Enter, then Ctrl + X)
