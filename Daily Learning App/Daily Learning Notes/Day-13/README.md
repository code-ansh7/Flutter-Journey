# 🚀 Flutter Journey — Day 13

## 🧩 Day 13 — Lists, Grids & Dynamic UI

Aaj maine Flutter me **Lists aur Grids ko dynamically display karna** seekha.

Day 13 ka main focus tha Flutter ke important collection widgets ko samajhna:

- `ListView`
- `ListView.builder`
- `GridView`
- `GridView.builder`

Iske saath maine dynamic data ko UI ke andar display karna, `index` ka use karna, `Map<String, dynamic>` ke through structured data rakhna aur list/grid items ko interactive banana bhi practice kiya.

---

# 🎯 Day 13 Goals

Aaj ke learning goals:

- [x] ListView samajhna
- [x] ListView me multiple widgets display karna
- [x] Vertical ListView banana
- [x] Horizontal ListView banana
- [x] `ListTile` ke saath ListView use karna
- [x] GridView samajhna
- [x] `crossAxisCount` samajhna
- [x] Grid spacing samajhna
- [x] `ListView.builder` samajhna
- [x] `itemCount` samajhna
- [x] `itemBuilder` samajhna
- [x] `index` samajhna
- [x] List data ko UI me display karna
- [x] `Map<String, dynamic>` ke through structured data banana
- [x] `GridView.builder` samajhna
- [x] Dynamic Grid UI banana
- [x] `InkWell` aur `onTap` ke through items ko interactive banana
- [x] Reusable widget/function banana

---

# 📚 Topics Covered

## 1. ListView

`ListView` Flutter ka ek scrolling widget hai jo multiple widgets ko ek list ke form me display karta hai.

Basic structure:

```dart
ListView(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)
```

ListView automatically scrolling provide karta hai jab content available space se zyada ho jata hai.

---

# ↕️ Vertical ListView

Default `ListView` vertical direction me items show karta hai.

Example:

```dart
ListView(
  children: [
    ListTile(
      title: Text("Food"),
    ),

    ListTile(
      title: Text("Transport"),
    ),

    ListTile(
      title: Text("Shopping"),
    ),
  ],
)
```

---

# ↔️ Horizontal ListView

`scrollDirection` property ka use karke ListView ko horizontal banaya ja sakta hai.

```dart
ListView(
  scrollDirection: Axis.horizontal,

  children: [
    Container(
      child: Text("All"),
    ),

    Container(
      child: Text("Food"),
    ),

    Container(
      child: Text("Shopping"),
    ),
  ],
)
```

### Important Property

```dart
scrollDirection: Axis.horizontal
```

Isse list left-to-right scroll hoti hai.

Default:

```dart
scrollDirection: Axis.vertical
```

---

# 🧱 ListTile

ListView ke andar structured list item banane ke liye `ListTile` kaafi useful hai.

Important properties:

```dart
ListTile(
  leading: Icon(Icons.restaurant),
  title: Text("Food"),
  subtitle: Text("Today"),
  trailing: Text("₹250"),
)
```

### Important Properties

| Property | Use |
|---|---|
| `leading` | Left side content |
| `title` | Main title |
| `subtitle` | Secondary information |
| `trailing` | Right side content |
| `tileColor` | Tile ka background |
| `shape` | Tile ka shape |
| `onTap` | Tap interaction |

---

# 🧩 Reusable Widget / Function

Repeated UI ko baar-baar likhne ke instead maine reusable function banana practice kiya.

Example:

```dart
Widget categoryChip(String title) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 12,
    ),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Text(title),
  );
}
```

Ab same UI ko multiple times use kar sakte hain:

```dart
categoryChip("All"),
categoryChip("Food"),
categoryChip("Transport"),
categoryChip("Shopping"),
```

### Benefit

Isse:

- Code repetition kam hota hai
- UI maintain karna easy hota hai
- Design change ek hi jagah se kiya ja sakta hai

---

# 🔲 GridView

`GridView` ka use items ko grid format me display karne ke liye hota hai.

Example:

```dart
GridView(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),

  children: [
    Container(),
    Container(),
    Container(),
    Container(),
  ],
)
```

---

# 📐 crossAxisCount

`crossAxisCount` batata hai ki ek row me kitne items honge.

Example:

```dart
crossAxisCount: 2
```

Output concept:

```text
┌────────┐ ┌────────┐
│ Item 1 │ │ Item 2 │
└────────┘ └────────┘

┌────────┐ ┌────────┐
│ Item 3 │ │ Item 4 │
└────────┘ └────────┘
```

Agar:

```dart
crossAxisCount: 3
```

to ek row me 3 items honge.

---

# ↔️ Grid Spacing

Grid ke items ke beech spacing ke liye:

```dart
crossAxisSpacing: 12,
mainAxisSpacing: 12,
```

### `crossAxisSpacing`

Columns ke beech horizontal spacing.

### `mainAxisSpacing`

Rows ke beech vertical spacing.

Example:

```dart
SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
)
```

---

# 🚀 ListView.builder

Aaj ka ek important concept tha:

```dart
ListView.builder()
```

Normal `ListView` me hum manually widgets likhte hain.

Example:

```dart
ListView(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)
```

Lekin agar data dynamically aa raha ho aur items bahut zyada ho sakte hain, to:

```dart
ListView.builder()
```

use karna useful hota hai.

---

# 🧠 ListView.builder Structure

```dart
ListView.builder(
  itemCount: 20,

  itemBuilder: (context, index) {

    return Text(
      "Item ${index + 1}",
    );
  },
)
```

Isme do important properties hain:

### `itemCount`

Kitne items create/display karne hain.

```dart
itemCount: 20
```

Matlab 20 items.

### `itemBuilder`

Har item ka UI banata hai.

```dart
itemBuilder: (context, index) {
  return Text("Item ${index + 1}");
}
```

---

# 🔢 index

`index` har item ki position represent karta hai.

Normally index:

```text
0
1
2
3
4
...
```

se start hota hai.

Example:

```dart
Text("Item ${index + 1}")
```

Output:

```text
Item 1
Item 2
Item 3
Item 4
Item 5
```

---

# 📦 List Data + ListView.builder

Maine ek simple list ke saath practice ki:

```dart
List<String> expenses = [
  "Food",
  "Transport",
  "Shopping",
  "Bills",
  "Entertainment",
  "Internet",
];
```

Phir:

```dart
ListView.builder(
  itemCount: expenses.length,

  itemBuilder: (context, index) {

    return ListTile(
      title: Text(
        expenses[index],
      ),
    );
  },
)
```

Yahan:

```dart
expenses.length
```

total items batata hai.

Aur:

```dart
expenses[index]
```

current item ka data deta hai.

---

# 🗂️ Map<String, dynamic>

Uske baad maine simple String list se advance structured data ki taraf move kiya.

Example:

```dart
List<Map<String, dynamic>> expenses = [
  {
    "title": "Food",
    "amount": 250,
    "date": "Today",
    "icon": Icons.restaurant,
    "iconColor": Colors.orange,
  },

  {
    "title": "Transport",
    "amount": 120,
    "date": "Today",
    "icon": Icons.directions_car,
    "iconColor": Colors.blue,
  },
];
```

Ek expense ke andar multiple properties store ho rahi hain:

```text
title
amount
date
icon
iconColor
```

---

# 🔍 Data Access

Map ke andar kisi value ko access karne ke liye key use karte hain.

Example:

```dart
expenses[index]["title"]
```

Amount:

```dart
expenses[index]["amount"]
```

Date:

```dart
expenses[index]["date"]
```

Icon:

```dart
expenses[index]["icon"]
```

Icon color:

```dart
expenses[index]["iconColor"]
```

---

# 🎨 Dynamic UI

Ab ek hi UI code multiple data items ke liye use ho raha tha.

Example:

```dart
ListTile(
  title: Text(
    expenses[index]["title"],
  ),

  subtitle: Text(
    expenses[index]["date"],
  ),

  leading: Icon(
    expenses[index]["icon"],
    color: expenses[index]["iconColor"],
  ),

  trailing: Text(
    "₹${expenses[index]["amount"]}",
  ),
)
```

Yahan UI manually repeat nahi kiya.

Data change hoga to UI automatically different values display karega.

---

# 🔲 GridView.builder

ListView.builder ke baad `GridView.builder` practice kiya.

Basic structure:

```dart
GridView.builder(
  itemCount: expenses.length,

  gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),

  itemBuilder: (context, index) {

    return Container(
      child: Text(
        expenses[index]["title"],
      ),
    );
  },
)
```

---

# ⚙️ GridView.builder Working

Iska working concept:

```text
expenses
    ↓
itemCount
    ↓
itemBuilder
    ↓
index
    ↓
current data
    ↓
UI Item
```

Example:

```text
index = 0 → Food
index = 1 → Transport
index = 2 → Shopping
index = 3 → Entertainment
```

---

# 👆 InkWell + onTap

Grid ke individual item ko interactive banane ke liye `InkWell` use kiya.

Example:

```dart
InkWell(
  onTap: () {
    print(
      "${expenses[index]["title"]} Tapped"
    );
  },

  child: Container(
    child: Text(
      expenses[index]["title"],
    ),
  ),
)
```

Ab har grid item ka apna tap action ho sakta hai.

For example:

```text
Food → Food Tapped

Transport → Transport Tapped

Shopping → Shopping Tapped
```

---

# 🧠 Important Concept — index + Data

Builder widgets ka sabse important concept:

```dart
itemBuilder: (context, index)
```

`index` ki help se hum current item ka data access karte hain.

Example:

```dart
expenses[index]
```

Agar:

```dart
index = 0
```

to:

```dart
expenses[0]
```

first item hoga.

Agar:

```dart
index = 2
```

to:

```dart
expenses[2]
```

third item hoga.

---

# 📊 Normal vs Builder

| Widget | Use |
|---|---|
| `ListView` | Manually defined list |
| `ListView.builder` | Dynamic / large list |
| `GridView` | Manually defined grid |
| `GridView.builder` | Dynamic grid |

---

# 🔥 Day 13 Practical Screens

Day 13 me maine following screens/practice banayi:

### 1. Expenses List

Basic vertical expense list.

Features:

- `ListView`
- `ListTile`
- `leading`
- `title`
- `subtitle`
- `trailing`
- `onTap`

---

### 2. Expenses Grid

Basic grid UI.

Features:

- `GridView`
- `SliverGridDelegateWithFixedCrossAxisCount`
- `crossAxisCount`
- `crossAxisSpacing`
- `mainAxisSpacing`
- Custom grid card

---

### 3. ListView.builder Practice

Dynamic list:

```dart
List<String> expenses
```

ke saath practice ki.

---

### 4. Dynamic List

Structured data:

```dart
List<Map<String, dynamic>>
```

ke saath expense list banayi.

Data fields:

```text
title
amount
date
icon
iconColor
```

---

### 5. GridView.builder Practice

Dynamic expense grid banaya.

Features:

- `GridView.builder`
- `itemCount`
- `itemBuilder`
- `index`
- Dynamic data
- Custom Container
- `InkWell`
- `onTap`

---

# 🧱 Day 13 Widget Concepts

Aaj repeatedly ye widget relationships use kiye:

```text
Scaffold
│
├── AppBar
│
└── SafeArea
     │
     └── Padding
          │
          └── Column
               │
               ├── Text
               │
               ├── SizedBox
               │
               └── Expanded
                    │
                    └── ListView / GridView
```

Dynamic builder ke case me:

```text
ListView.builder
│
├── itemCount
│
└── itemBuilder
      │
      └── index
           │
           └── data[index]
                │
                └── UI
```

---

# 💡 Key Learnings

### 1. ListView scrolling ke liye useful hai

```dart
ListView(...)
```

---

### 2. Horizontal list ke liye

```dart
scrollDirection: Axis.horizontal
```

---

### 3. Grid ke columns control karne ke liye

```dart
crossAxisCount: 2
```

---

### 4. Dynamic list ke liye

```dart
ListView.builder()
```

---

### 5. Dynamic grid ke liye

```dart
GridView.builder()
```

---

### 6. Builder me current item ke liye

```dart
index
```

---

### 7. Data access karne ke liye

```dart
data[index]
```

---

### 8. Map ke andar specific value ke liye

```dart
data[index]["title"]
```

---

### 9. Interactive item ke liye

```dart
InkWell(
  onTap: () {},
)
```

---

### 10. Repeated UI ko reusable banane ke liye

```dart
Widget categoryChip(String title) {
  ...
}
```

---

# 🧪 Practice Done

Day 13 me maine practically:

- [x] Expense List banayi
- [x] Horizontal category list banayi
- [x] ListTile customize kiya
- [x] Custom category chip banaya
- [x] GridView banaya
- [x] Dynamic ListView banaya
- [x] `ListView.builder` use kiya
- [x] `GridView.builder` use kiya
- [x] List data ko UI se connect kiya
- [x] Map based data use kiya
- [x] Dynamic icons and colors use kiye
- [x] Grid items ko clickable banaya

---

# 🧠 What I Understood Today

Aaj mujhe ye samajh aaya ki Flutter me agar UI me bahut saare similar items hain to har item ka widget manually likhna zaroori nahi hai.

Hum data ko ek list me rakh sakte hain aur:

```dart
ListView.builder()
```

ya

```dart
GridView.builder()
```

ke through us data se automatically UI generate kar sakte hain.

Builder widgets me:

```dart
index
```

current item identify karta hai.

---

# 🚀 Day 13 Outcome

Day 13 complete karne ke baad mujhe Flutter me:

```text
Static List
     ↓
ListView
     ↓
Static Grid
     ↓
GridView
     ↓
Dynamic List
     ↓
ListView.builder
     ↓
Structured Data
     ↓
Map<String, dynamic>
     ↓
Dynamic Grid
     ↓
GridView.builder
```

ka basic practical understanding ho gaya.

---

# 📁 Practice Files

```text
day-13-screen/
│
├── ExpensesList.dart
├── ExpensesGrid.dart
├── ListViewBuilderScreen.dart
└── GridViewBuilderScreen.dart
```

---

# 🔜 Next Learning

Next step me hum **JSON Parsing** ki taraf move karenge.

Flow:

```text
JSON
 ↓
Dart
 ↓
Parse JSON
 ↓
Map / List
 ↓
Model
 ↓
ListView.builder
 ↓
Dynamic UI
```

JSON Parsing ke baad hum real-world API data ko Flutter UI me display karna start karenge.

---

# 🏆 Day 13 Status

**Status:** ✅ Completed

**Main Focus:** Lists + Grids + Builder Widgets

**Difficulty:** 🟡 Beginner → Intermediate

**Most Important Concepts:**

```text
ListView
GridView
ListView.builder
GridView.builder
itemCount
itemBuilder
index
List<String>
List<Map<String, dynamic>>
Dynamic UI
InkWell
onTap
Reusable Widgets
```

---

# 💾 Git Commit

```bash
git add .
git commit -m "Day 13: Learn ListView GridView and Builder Widgets"
git push
```

---

# 🎯 Final Takeaway

> **ListView aur GridView UI ko collection ke form me display karne ke liye use hote hain, jabki `.builder` versions dynamic data ke basis par items generate karne ke liye use hote hain. `index` ki help se current item ka data access karke reusable UI create ki ja sakti hai.**

---

## 🚀 Flutter Journey Progress

```text
DAY 01–12 ✅
Flutter Fundamentals + User Interaction

DAY 13 ✅
Lists + Grids + Dynamic Builder UI

        ↓

NEXT
JSON Parsing
        ↓
Models
        ↓
API Data
        ↓
Real-world Apps
```

**Day 13 Complete! 🔥**