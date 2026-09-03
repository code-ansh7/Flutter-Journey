# 📚 Flutter Journey — Day 14 Notes

## 🚀 Topic: Dynamic UI & Data-Driven UI

Day 14 me focus tha Flutter me **Dynamic UI** banana.

Ab tak hum mostly UI ko manually create kar rahe the.

Aaj samjha ki real applications me data ko list/map me store karke us data ke according UI generate ki ja sakti hai.

---

# 1️⃣ What is Dynamic UI?

Dynamic UI ka matlab hai:

> UI ko manually hard-code karne ke bajay data ke according automatically generate karna.

### Example

Agar mere paas ye data hai:

```dart
[
  "Food",
  "Transport",
  "Shopping"
]
```

To mujhe manually:

```dart
Text("Food")
Text("Transport")
Text("Shopping")
```

likhne ki zarurat nahi.

Builder widgets ka use karke list ke data se UI generate kar sakte hain.

### Flow

```text
Data
  ↓
Logic
  ↓
UI
```

---

# 2️⃣ List<Map<String, dynamic>>

Aaj expense data ko store karne ke liye:

```dart
List<Map<String, dynamic>> expense = [
  {
    "title": "Food",
    "amount": 250,
    "icon": Icons.restaurant,
    "iconColor": Colors.orange,
  },
];
```

use kiya.

Yahaan:

```text
List
 ↓
Multiple Maps
 ↓
Each Map = One Expense
```

Example:

```text
Food
 ├── title
 ├── amount
 ├── icon
 └── iconColor
```

---

# 3️⃣ Why Map?

Map ka use key-value pair store karne ke liye hota hai.

Example:

```dart
{
  "title": "Food",
  "amount": 250
}
```

Yahaan:

```text
"title"  → "Food"
"amount" → 250
```

hai.

---

# 4️⃣ Why dynamic?

Humne:

```dart
Map<String, dynamic>
```

use kiya.

Reason:

Ek Map ke andar different types ka data hai.

Example:

```dart
"title"     → String
"amount"    → int
"icon"      → IconData
"iconColor" → Color
```

Isliye value ke liye:

```dart
dynamic
```

use hua.

---

# 5️⃣ Accessing Map Data

List ke andar current item ko `index` se access kar sakte hain.

Example:

```dart
expense[index]["title"]
```

Amount:

```dart
expense[index]["amount"]
```

Icon:

```dart
expense[index]["icon"]
```

Color:

```dart
expense[index]["iconColor"]
```

### Flow

```text
expense
   ↓
 index
   ↓
 current Map
   ↓
 "title" / "amount" / "icon"
```

---

# 6️⃣ GridView.builder

Spending Categories ke liye:

```dart
GridView.builder()
```

use kiya.

Builder ka main benefit hai ki UI list ke data ke according generate hoti hai.

Example:

```dart
GridView.builder(
  itemCount: expense.length,
  itemBuilder: (context, index) {
    return Container(
      child: Text(
        "${expense[index]["title"]}",
      ),
    );
  },
)
```

Agar list me 6 items hain to 6 grid items generate honge.

---

# 7️⃣ itemCount

```dart
itemCount: expense.length
```

ka matlab:

> Builder ko batao ki kitne items generate karne hain.

Agar:

```dart
expense.length
```

ki value `6` hai:

```text
6 items
 ↓
6 UI elements
```

### Hard-coded

```dart
itemCount: 3
```

Problem:

Agar list me 6 items hain to sirf 3 show honge.

### Dynamic

```dart
itemCount: expense.length
```

Better hai kyunki list ki length ke according UI generate hogi.

---

# 8️⃣ itemBuilder

```dart
itemBuilder: (context, index) {
  return Container();
}
```

`itemBuilder` har item ke liye UI banata hai.

`index` current item ki position batata hai.

Example:

```text
index = 0 → Food
index = 1 → Transport
index = 2 → Shopping
index = 3 → Movie
```

---

# 9️⃣ GridView Layout

Grid me:

```dart
crossAxisCount: 3
```

use kiya.

Iska matlab ek row me 3 items.

```text
┌───────┐ ┌───────┐ ┌───────┐
│ Food  │ │Trans.  │ │Shop.  │
└───────┘ └───────┘ └───────┘

┌───────┐ ┌───────┐ ┌───────┐
│ Movie │ │Elect. │ │Internet│
└───────┘ └───────┘ └───────┘
```

---

# 🔟 Grid Spacing

Grid me:

```dart
crossAxisSpacing: 10,
mainAxisSpacing: 10,
```

use kiya.

### crossAxisSpacing

Columns ke beech ka gap.

### mainAxisSpacing

Rows ke beech ka gap.

---

# 1️⃣1️⃣ ListView.builder

Recent Activity ke liye:

```dart
ListView.builder()
```

use kiya.

Example:

```dart
ListView.builder(
  itemCount: activity.length,
  itemBuilder: (context, index) {
    return Container();
  },
)
```

Activity list ke according UI generate hoti hai.

---

# 1️⃣2️⃣ Activity Data

Activity ko bhi:

```dart
List<Map<String, dynamic>>
```

me store kiya.

Example:

```dart
{
  "title": "Salary",
  "date": "Yesterday, 10:00 AM",
  "amount": "+₹25,000",
  "type": "income",
}
```

Ek activity ke andar:

```text
title
date
amount
type
```

store hai.

---

# 1️⃣3️⃣ Dynamic Activity UI

Activity ka title:

```dart
activity[index]["title"]
```

Date:

```dart
activity[index]["date"]
```

Amount:

```dart
activity[index]["amount"]
```

Type:

```dart
activity[index]["type"]
```

use karke UI me data display kiya.

---

# 1️⃣4️⃣ Conditional UI

Aaj ternary operator ka practical use bhi kiya.

Code:

```dart
activity[index]["type"] == "income"
    ? Colors.green
    : Colors.red
```

### Meaning

Agar type:

```text
income
```

hai → Green

Otherwise:

```text
expense
```

→ Red

### Flow

```text
             type
              ↓
        ┌─────┴─────┐
        ↓           ↓
     income      expense
        ↓           ↓
     Green         Red
```

---

# 1️⃣5️⃣ Ternary Operator

Basic syntax:

```dart
condition ? valueIfTrue : valueIfFalse
```

Example:

```dart
age >= 18 ? "Adult" : "Minor"
```

Agar condition true:

```text
Adult
```

Otherwise:

```text
Minor
```

---

# 1️⃣6️⃣ Dynamic Calculation

Expense list ke total ko calculate kiya.

```dart
double totalExpense = 0;

for (int i = 0; i < expense.length; i++) {
  totalExpense += expense[i]["amount"];
}
```

### Step-by-step

Initially:

```text
totalExpense = 0
```

Then:

```text
Food        → +250
Transport   → +120
Shopping    → +700
Movie       → +6000
Electricity → +1200
Internet    → +800
```

Har item ka amount total me add hota gaya.

---

# 1️⃣7️⃣ Why expense.length in Loop?

Loop:

```dart
for (int i = 0; i < expense.length; i++)
```

ka matlab:

> List ke har item par loop chalao.

Agar list me 6 items hain:

```text
0
1
2
3
4
5
```

tak loop chalega.

---

# 1️⃣8️⃣ Calculated Value UI me Display

Calculation ke baad:

```dart
totalExpense
```

ko UI me display kiya:

```dart
Text(
  "₹ ${totalExpense}",
)
```

Ab value hard-coded nahi hai.

UI calculation se value receive kar rahi hai.

---

# 1️⃣9️⃣ Hard-Coded vs Dynamic UI

## ❌ Hard-Coded

```dart
Text("₹ 18250")
```

Value manually likhi hui hai.

Agar data change hua to manually value change karni padegi.

---

## ✅ Dynamic

```dart
Text(
  "₹ ${totalExpense}",
)
```

Value calculation se aa rahi hai.

### Better Architecture

```text
Expense Data
     ↓
Calculation
     ↓
totalExpense
     ↓
Text Widget
```

---

# 2️⃣0️⃣ shrinkWrap

Nested scrollable widgets ke case me:

```dart
shrinkWrap: true
```

use kiya.

Example:

```dart
GridView.builder(
  shrinkWrap: true,
)
```

Iska purpose hai GridView ko apne content ke according required height lene dena.

---

# 2️⃣1️⃣ NeverScrollableScrollPhysics

GridView aur ListView ke andar:

```dart
physics: NeverScrollableScrollPhysics()
```

use kiya.

Iska matlab:

> GridView/ListView khud scroll nahi karega.

Outer:

```dart
SingleChildScrollView
```

poori screen ko scroll karega.

---

# 2️⃣2️⃣ Nested Scrolling Structure

Current screen ka structure:

```text
SingleChildScrollView
        ↓
      Column
        ↓
 ┌──────┼────────┐
 ↓      ↓        ↓
Header  Cards    Grid
                  ↓
              ListView
```

Main scrolling:

```text
SingleChildScrollView
```

handle karta hai.

Inner Grid/List ki scrolling disabled hai.

---

# 2️⃣3️⃣ shrinkWrap + NeverScrollableScrollPhysics

Dono ko saath me use kiya:

```dart
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
```

### Why?

Kyuki GridView/ListView ek:

```text
SingleChildScrollView
        ↓
      Column
```

ke andar hai.

Agar inner list bhi independently scroll karegi to nested scrolling issue ho sakta hai.

Isliye:

```text
Outer ScrollView
      ↓
Main scrolling
      ↓
Inner List/Grid
      ↓
Only content height
```

---

# 2️⃣4️⃣ Data-Driven UI

Aaj ka most important concept:

## Data-Driven UI

UI ko data se drive karna.

```text
┌───────────────────┐
│       DATA        │
│                   │
│ Expense List      │
│ Activity List     │
└─────────┬─────────┘
          ↓
┌───────────────────┐
│      LOGIC        │
│                   │
│ Loop              │
│ Calculation       │
│ Conditions        │
└─────────┬─────────┘
          ↓
┌───────────────────┐
│        UI         │
│                   │
│ GridView          │
│ ListView          │
│ Text              │
│ Container         │
└───────────────────┘
```

---

# 2️⃣5️⃣ Real-World Example

Real applications me data generally manually UI me nahi likha hota.

Example:

```text
Backend / Database
       ↓
     Data
       ↓
     Model
       ↓
     Logic
       ↓
      UI
```

Aaj humne iska basic version practice kiya:

```text
Local List
    ↓
Calculation
    ↓
Builder
    ↓
UI
```

---

# 🧠 Important Things I Learned Today

### 1.

```dart
List<Map<String, dynamic>>
```

se structured dynamic data store kar sakte hain.

### 2.

```dart
GridView.builder()
```

list ke data se grid UI generate kar sakta hai.

### 3.

```dart
ListView.builder()
```

list ke data se list UI generate kar sakta hai.

### 4.

```dart
itemCount: list.length
```

dynamic item count ke liye useful hai.

### 5.

```dart
list[index]
```

current item access karta hai.

### 6.

```dart
condition ? trueValue : falseValue
```

conditional UI ke liye use kar sakte hain.

### 7.

```dart
shrinkWrap: true
```

nested scrollable widget ko content ke according size karne me help karta hai.

### 8.

```dart
NeverScrollableScrollPhysics()
```

inner scrolling disable karta hai.

### 9.

Loop ka use karke list ke data se calculation kar sakte hain.

---

# 🔥 Day 14 Core Pattern

```text
             DATA
              ↓
   List<Map<String, dynamic>>
              ↓
            LOGIC
              ↓
     ┌────────┴────────┐
     ↓                 ↓
 Calculation       Conditions
     ↓                 ↓
     └────────┬────────┘
              ↓
             UI
              ↓
     ┌────────┴────────┐
     ↓                 ↓
 GridView.builder  ListView.builder
```

---

# 💡 Interview Point

### Q. `ListView.builder` kyun use karte hain?

**Answer:**

`ListView.builder` ka use dynamic list items generate karne ke liye kiya jata hai. Isme `itemBuilder` ke through har item ki UI create hoti hai.

---

### Q. `itemCount` kya karta hai?

**Answer:**

`itemCount` builder ko batata hai ki kitne items generate karne hain.

Example:

```dart
itemCount: activity.length
```

---

### Q. `shrinkWrap: true` kyun use kiya?

**Answer:**

Jab `ListView` ya `GridView` kisi parent scrollable widget ke andar ho, tab `shrinkWrap: true` usko apne content ke according height lene me help karta hai.

---

### Q. `NeverScrollableScrollPhysics()` kya karta hai?

**Answer:**

Ye inner `ListView` ya `GridView` ki scrolling ko disable karta hai.

---

### Q. Ternary operator ka use?

**Answer:**

Short conditional logic ke liye.

```dart
condition ? trueValue : falseValue
```

---

# 📝 Revision Summary

Aaj maine:

```text
List
 ↓
Map
 ↓
Dynamic Data
 ↓
Builder
 ↓
Dynamic UI
 ↓
Calculation
 ↓
Conditional UI
```

ka complete basic flow practically implement kiya.

## ⭐ Main Learning

> **Don't hard-code every UI item. Store data and generate UI from that data.**

---

# 🚀 Day 14 Status

**Topic:** Dynamic UI & Data-Driven UI

**Project:** Expense Dashboard

**Status:** ✅ Completed

**Next Topic:** Navigation & Multiple Screens