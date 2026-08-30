# 🚀 Flutter Journey — Day 12

## 💰 Day 12 — More Input Controls + Dynamic UI

Aaj maine Flutter me different types ke **Input Controls** ko practically implement kiya.

Day 12 ka main focus tha user se different types ka input lena aur `setState()` ki help se UI ko dynamically update karna.

Aaj maine ek real-world **Budget Planner Screen** banayi jisme user:

- Monthly budget set kar sakta hai
- Budget type select kar sakta hai
- Spending categories select kar sakta hai
- Notification setting ON/OFF kar sakta hai
- Budget information save karne ke liye action perform kar sakta hai

---

# 🎯 Today's Goal

Aaj ka goal tha Flutter ke basic input controls ko sirf theoretically nahi, balki ek **real-world UI** ke andar use karna.

### Main Concepts:

- `Slider`
- `Radio`
- `Checkbox`
- `Switch`
- `setState()`
- Boolean State
- Nullable values
- Dynamic UI
- `SafeArea`
- `SingleChildScrollView`
- Widget Tree
- UI Sections
- User Interaction

---

# 🧩 Day 12 Screen — Budget Planner

Aaj ki screen ek **Budget Planner** hai.

### Screen Flow

```text
Budget Planner
      ↓
Set Monthly Budget
      ↓
Budget Slider
      ↓
Budget Type
      ↓
Spending Categories
      ↓
Notifications
      ↓
Save Budget
```

---

# 🌳 Widget Tree

```text
Scaffold
│
├── AppBar
│    └── Title: "Budget Planner"
│
└── Body
     │
     └── SafeArea
          │
          └── SingleChildScrollView
               │
               └── Padding
                    │
                    └── Column
                         │
                         ├── Header
                         │
                         ├── SizedBox
                         │
                         ├── Budget Card
                         │    ├── Text
                         │    ├── Text
                         │    └── Slider
                         │
                         ├── SizedBox
                         │
                         ├── Budget Type Section
                         │    ├── Text
                         │    └── Row
                         │         ├── Radio
                         │         ├── Text
                         │         ├── Radio
                         │         └── Text
                         │
                         ├── SizedBox
                         │
                         ├── Categories Section
                         │    ├── Checkbox
                         │    ├── Checkbox
                         │    ├── Checkbox
                         │    └── Checkbox
                         │
                         ├── SizedBox
                         │
                         ├── Notification Section
                         │    └── Switch
                         │
                         ├── SizedBox
                         │
                         └── Save Button
```

---

# 🎚️ 1. Slider

Budget amount ko dynamically change karne ke liye `Slider` use kiya.

```dart
double budget = 25000;
```

Slider ke through user budget ko change kar sakta hai.

```dart
Slider(
  min: 500,
  max: 50000,
  value: budget,
  onChanged: (value) {
    setState(() {
      budget = value;
    });
  },
)
```

### Important Concepts

```text
min
 ↓
Minimum allowed value

max
 ↓
Maximum allowed value

value
 ↓
Current selected value

onChanged
 ↓
User slider move kare tab execute hota hai
```

---

# 🔘 2. Radio Button

Budget type select karne ke liye `Radio<String>` use kiya.

Available options:

```text
○ Monthly
○ Weekly
```

State:

```dart
String? budgetType = "Monthly";
```

Radio ka important concept:

```dart
value
```

Current radio ki value.

```dart
groupValue
```

Currently selected value.

```dart
onChanged
```

Selection change hone par execute hota hai.

Example:

```dart
Radio<String>(
  value: "Monthly",
  groupValue: budgetType,
  onChanged: (value) {
    setState(() {
      budgetType = value;
    });
  },
)
```

### Radio ka logic

```text
Radio value
     ↓
groupValue se compare
     ↓
Same hai?
     ↓
Selected
```

---

# ☑️ 3. Checkbox

Multiple spending categories select karne ke liye `Checkbox` use kiya.

Categories:

```text
☑ Food
☑ Transport
☐ Shopping
☐ Entertainment
```

Har checkbox ka apna Boolean state hai.

```dart
bool food = false;
bool transport = false;
bool shopping = false;
bool entertainment = false;
```

Example:

```dart
Checkbox(
  value: food,
  onChanged: (value) {
    setState(() {
      food = value!;
    });
  },
)
```

### Checkbox ka logic

```text
false
 ↓
Unchecked

true
 ↓
Checked
```

Checkbox multiple selections allow karta hai.

Example:

```text
Food       ☑
Transport  ☑
Shopping   ☑
```

---

# 🔄 4. Switch

Notification / Auto-save jaise ON/OFF settings ke liye `Switch` use kiya.

State:

```dart
bool autoSave = false;
```

Example:

```dart
Switch(
  value: autoSave,
  onChanged: (value) {
    setState(() {
      autoSave = value;
    });
  },
)
```

### Switch ka logic

```text
false → OFF

true → ON
```

---

# 🔥 5. setState()

Aaj ka sabse important concept:

```dart
setState()
```

`setState()` Flutter ko batata hai:

> "State ki value change ho gayi hai, UI ko dobara build karo."

Example:

```dart
setState(() {
  budget = value;
});
```

Without `setState()`:

```text
Variable change
      ↓
UI ko change ka pata nahi
      ↓
Screen update nahi hogi
```

With `setState()`:

```text
Variable change
      ↓
setState()
      ↓
build() runs again
      ↓
Updated UI
```

---

# 🧠 6. State Variables

Aaj maine different types ke state variables use kiye.

### Double

```dart
double budget = 25000;
```

Budget amount store karne ke liye.

### String

```dart
String? budgetType = "Monthly";
```

Budget type store karne ke liye.

### Boolean

```dart
bool food = false;
bool transport = false;
bool shopping = false;
bool entertainment = false;
bool autoSave = false;
```

Checkbox aur Switch ki state store karne ke liye.

---

# ❓ 7. `value!` Concept

Checkbox aur Radio ke `onChanged` me value nullable ho sakti hai.

Example:

```dart
onChanged: (value) {
  setState(() {
    food = value!;
  });
}
```

Yahan:

```dart
value
```

ka type hota hai:

```dart
bool?
```

Lekin:

```dart
food
```

ka type hai:

```dart
bool
```

`!` Dart ko batata hai:

> "Mujhe pata hai ki yahan value null nahi hogi."

---

# 📱 8. SafeArea

Screen ko device ke unsafe areas se bachane ke liye:

```dart
SafeArea(
  child: ...
)
```

use kiya.

Ye content ko areas jaise:

- Notch
- Status bar
- System UI

ke saath overlap hone se bachane me help karta hai.

---

# 📜 9. SingleChildScrollView

Screen me future me content badh sakta hai.

Agar content screen se bada ho jaye to overflow aa sakta hai.

Isliye:

```dart
SingleChildScrollView(
  child: ...
)
```

use kiya.

Flow:

```text
Large Content
      ↓
SingleChildScrollView
      ↓
User Scroll
      ↓
No Vertical Overflow
```

---

# 🎨 10. UI Design

Aaj screen ko simple aur user-friendly rakhne ka focus tha.

### Background

```dart
Color(0xFFF7F9FC)
```

Light background ke liye.

### Card

```dart
Colors.white
```

### Border Radius

```dart
BorderRadius.circular(16)
```

ya

```dart
BorderRadius.circular(20)
```

### Section Gap

```dart
SizedBox(height: 20)
```

### Small Gap

```dart
SizedBox(height: 5)
```

ya

```dart
SizedBox(height: 10)
```

---

# 🏗️ 11. UI Sections

Screen ko multiple logical sections me divide kiya:

```text
Header
   ↓
Budget Card
   ↓
Budget Type
   ↓
Spending Categories
   ↓
Settings / Notifications
   ↓
Save Button
```

Isse UI readable aur maintainable hoti hai.

---

# 🔄 Dynamic UI Flow

Aaj screen static nahi rahi.

User interaction ke according UI state change hoti hai.

```text
User Action
     ↓
onChanged()
     ↓
setState()
     ↓
State Variable Update
     ↓
build()
     ↓
Updated UI
```

---

# 🧪 Practical Examples

### Budget Change

```text
₹25,000
   ↓
Slider Move
   ↓
₹30,000
```

### Budget Type

```text
Monthly
   ↓
Weekly
```

### Categories

```text
Food       ☐
Transport  ☐
Shopping   ☐

        ↓

Food       ☑
Transport  ☑
Shopping   ☐
```

### Notification

```text
OFF
 ↓
ON
```

---

# 📚 Day 12 Learning Summary

| Concept | Learned |
|---|---|
| Slider | ✅ |
| Radio | ✅ |
| Checkbox | ✅ |
| Switch | ✅ |
| setState() | ✅ |
| Boolean State | ✅ |
| Nullable Values | ✅ |
| `value!` | ✅ |
| SafeArea | ✅ |
| SingleChildScrollView | ✅ |
| Dynamic UI | ✅ |
| Widget Tree | ✅ |
| UI Sections | ✅ |

---

# 🧠 What I Learned

Aaj mujhe samajh aaya ki Flutter me user input sirf `TextField` tak limited nahi hai.

Different requirements ke liye different controls use hote hain:

```text
Text Input
   ↓
TextField

Range / Amount
   ↓
Slider

Single Selection
   ↓
Radio

Multiple Selection
   ↓
Checkbox

ON / OFF
   ↓
Switch
```

Aur in sab ko dynamic banane ke liye:

```text
State
 +
setState()
 =
Dynamic UI
```

---

# 🏆 Day 12 Outcome

Day 12 complete karne ke baad maine Flutter me multiple input controls ko ek real-world **Budget Planner** screen ke andar practically implement kiya.

Ab main user interaction ke through:

- Values change kar sakta hoon
- Options select kar sakta hoon
- Multiple categories select kar sakta hoon
- Settings ON/OFF kar sakta hoon
- UI ko state ke according dynamically update kar sakta hoon

---

# 🚀 Next Step — Day 13

## Conditional UI

Next day me:

```text
DAY 13
│
├── if / else in UI
├── Ternary Operator
├── Visibility
├── Dynamic Widgets
├── Loading State
├── Empty State
└── Result State
```

Goal:

> User ki current state ke according different UI show karna.

Example:

```text
Loading
   ↓
Data Loaded
   ↓
Result

OR

No Data
   ↓
Empty State
```

---

# 📊 Flutter Journey Progress

```text
Day 01–06  Fundamentals + Layout      ✅
Day 07     Buttons + Images            ✅
Day 08     Images + TextField         ✅
Day 09     Controller + State         ✅
Day 10     Forms + Validation         ✅
Day 11     User Interaction           ✅
Day 12     More Input Controls        ✅
Day 13     Conditional UI             🔜
```

---

# 🎯 Day 12 Status

**Status:** ✅ COMPLETED

**Screen:** Budget Planner

**Main Focus:** More Input Controls + Dynamic UI

**Next:** Conditional UI 🚀