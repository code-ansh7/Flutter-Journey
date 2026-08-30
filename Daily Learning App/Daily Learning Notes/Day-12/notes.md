# 🚀 Flutter Journey — Day 12 Notes

# 🎛️ Day 12 — More Input Controls

Aaj maine Flutter me different types ke **Input Controls** ko practically use kiya.

Aaj humne ek real-world **Budget Planner Screen** banayi jisme user:

- Budget amount select kar sakta hai
- Budget type choose kar sakta hai
- Multiple spending categories select kar sakta hai
- Settings ko ON/OFF kar sakta hai
- UI ko dynamically update kar sakta hai

---

# 📚 Topics Covered

```text
Slider
Radio
Checkbox
Switch
setState()
Boolean State
Nullable Values
value!
SafeArea
SingleChildScrollView
Dynamic UI
```

---

# 1️⃣ Slider

## 🔹 Slider kya hai?

`Slider` ka use tab hota hai jab user ko kisi **range ke andar ek value select** karni ho.

Example:

```text
₹500 ─────────●────────── ₹50,000
```

Budget Planner me humne budget amount select karne ke liye Slider use kiya.

---

## 🔹 Basic Structure

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

---

## 🔹 Important Properties

### `min`

Minimum allowed value.

```dart
min: 500
```

Matlab user `500` se kam select nahi kar sakta.

---

### `max`

Maximum allowed value.

```dart
max: 50000
```

Matlab maximum budget `50,000` hai.

---

### `value`

Slider ki current value.

```dart
value: budget
```

---

### `onChanged`

Jab user slider move karta hai tab ye callback execute hota hai.

```dart
onChanged: (value) {
  ...
}
```

---

## 🔄 Slider Flow

```text
User Slider Move
       ↓
onChanged()
       ↓
value receive
       ↓
setState()
       ↓
budget update
       ↓
UI rebuild
```

---

# 2️⃣ Radio Button

## 🔹 Radio kya hai?

`Radio` ka use **single selection** ke liye hota hai.

Example:

```text
○ Monthly
○ Weekly
```

User ek time par sirf ek option select kar sakta hai.

---

## 🔹 State

```dart
String? budgetType = "Monthly";
```

Yahan default selected option:

```text
Monthly
```

hai.

---

## 🔹 Radio Structure

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

---

# 🔑 Radio ke 3 Important Parts

## `value`

Current radio ki value.

```dart
value: "Monthly"
```

---

## `groupValue`

Currently selected value.

```dart
groupValue: budgetType
```

Flutter compare karta hai:

```text
value == groupValue
```

Agar same hua:

```text
Radio Selected
```

---

## `onChanged`

User selection change kare tab execute hota hai.

```dart
onChanged: (value) {
  setState(() {
    budgetType = value;
  });
}
```

---

# 🔄 Radio Flow

```text
User Monthly select karta hai
          ↓
value = "Monthly"
          ↓
budgetType update
          ↓
setState()
          ↓
UI rebuild
          ↓
Monthly selected
```

---

# 3️⃣ Checkbox

## 🔹 Checkbox kya hai?

`Checkbox` ka use **multiple options select** karne ke liye hota hai.

Example:

```text
☑ Food
☑ Transport
☐ Shopping
☐ Entertainment
```

Yahan user ek se zyada options select kar sakta hai.

---

## 🔹 State Variables

Har checkbox ki apni state rakhi:

```dart
bool food = false;
bool transport = false;
bool shopping = false;
bool entertainment = false;
```

---

## 🔹 Checkbox Structure

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

---

# 🔄 Checkbox Flow

```text
Checkbox tap
     ↓
onChanged()
     ↓
value receive
     ↓
Boolean update
     ↓
setState()
     ↓
UI rebuild
```

---

# ☑️ Checkbox ka Boolean Logic

```text
false
  ↓
Unchecked

true
  ↓
Checked
```

Example:

```dart
bool food = false;
```

Initially:

```text
☐ Food
```

User click kare:

```dart
food = true;
```

UI:

```text
☑ Food
```

Dobara click:

```dart
food = false;
```

UI:

```text
☐ Food
```

---

# 4️⃣ `value!` kya hai?

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

ka type:

```dart
bool?
```

hai.

Lekin:

```dart
food
```

ka type:

```dart
bool
```

hai.

---

## 🔹 `!` ka meaning

```dart
value!
```

Dart ko batata hai:

> Mujhe pata hai ki value null nahi hai.

Isliye nullable:

```dart
bool?
```

ko non-null:

```dart
bool
```

ki tarah use kar pa rahe hain.

---

# 5️⃣ Switch

## 🔹 Switch kya hai?

`Switch` ka use generally **ON/OFF settings** ke liye hota hai.

Example:

```text
Notifications     ON 🔘
```

---

## 🔹 State

```dart
bool autoSave = false;
```

---

## 🔹 Basic Structure

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

---

# 🔄 Switch Flow

```text
OFF
 ↓
User taps
 ↓
onChanged()
 ↓
value = true
 ↓
setState()
 ↓
ON
```

Dobara tap:

```text
ON
 ↓
false
 ↓
OFF
```

---

# 6️⃣ setState()

Day 12 ka sabse important concept:

```dart
setState()
```

`setState()` Flutter ko batata hai ki:

> State change hui hai, UI ko update karo.

---

## 🔹 Example

```dart
setState(() {
  budget = value;
});
```

Yahan:

```text
budget ki value change
        ↓
setState()
        ↓
build() dobara execute
        ↓
Updated UI
```

---

# ❌ Without setState()

Agar hum directly:

```dart
budget = value;
```

karenge to state variable change ho sakta hai, lekin Flutter ko automatically UI rebuild karne ka signal nahi milega.

---

# ✅ With setState()

```dart
setState(() {
  budget = value;
});
```

Ab Flutter ko pata chalta hai:

```text
State Changed
     ↓
Rebuild UI
```

---

# 7️⃣ StatefulWidget kyu use hua?

Hamari screen me values dynamically change ho rahi hain.

Example:

```text
Budget
Radio
Checkbox
Switch
```

Ye sab user interaction ke according change hote hain.

Isliye:

```dart
StatefulWidget
```

use kiya.

---

# 🔄 StatefulWidget Concept

```text
State Variable
      ↓
User Interaction
      ↓
setState()
      ↓
build()
      ↓
Updated UI
```

---

# 8️⃣ SafeArea

Screen ke content ko device ke unsafe areas se protect karne ke liye:

```dart
SafeArea(
  child: ...
)
```

use kiya.

---

## 🔹 SafeArea ka purpose

Ye content ko areas jaise:

```text
Status Bar
Notch
System UI
```

ke saath overlap hone se bachane me help karta hai.

---

# 9️⃣ SingleChildScrollView

Agar screen ka content screen ki height se bada ho jaye to:

```text
Bottom Overflow
```

aa sakta hai.

Isliye humne:

```dart
SingleChildScrollView(
  child: ...
)
```

use kiya.

---

## 🔄 Concept

```text
Content Height > Screen Height
             ↓
SingleChildScrollView
             ↓
User Scroll
             ↓
Complete Content Accessible
```

---

# 🔟 UI Sections

Budget Planner ko multiple logical sections me divide kiya.

```text
Budget Planner
      ↓
Budget Card
      ↓
Budget Type
      ↓
Spending Categories
      ↓
Settings
      ↓
Save Button
```

Isse UI:

- Clean
- Readable
- Organized
- Maintainable

banti hai.

---

# 🎨 UI Design Concepts

Aaj basic UI styling bhi practice ki.

## Background

```dart
Color(0xFFF7F9FC)
```

Light background ke liye.

---

## White Card

```dart
Colors.white
```

Cards ko clean look dene ke liye.

---

## Border Radius

```dart
BorderRadius.circular(16)
```

Rounded corners ke liye.

---

## Padding

```dart
EdgeInsets.all(20)
```

Container ke andar spacing ke liye.

---

## Vertical Gap

```dart
SizedBox(height: 20)
```

Widgets ke beech vertical spacing ke liye.

---

## Small Gap

```dart
SizedBox(height: 5)
```

Small spacing ke liye.

---

# 🧠 Input Controls — Kab Kya Use Kare?

Ye concept important hai.

| Requirement | Widget |
|---|---|
| Text input | TextField |
| Range value | Slider |
| Single selection | Radio |
| Multiple selection | Checkbox |
| ON/OFF | Switch |
| Button action | ElevatedButton |
| Icon action | IconButton |

---

# ⚡ Radio vs Checkbox

Ye difference yaad rakhna:

### Radio

```text
Only ONE selection
```

Example:

```text
○ Monthly
○ Weekly
```

---

### Checkbox

```text
MULTIPLE selections
```

Example:

```text
☑ Food
☑ Transport
☐ Shopping
☑ Entertainment
```

---

# ⚡ Checkbox vs Switch

### Checkbox

Options select karne ke liye.

```text
☑ Food
```

### Switch

Setting ON/OFF karne ke liye.

```text
Notifications    ON
```

---

# 🧩 Complete State Example

Budget Planner me state kuch is type ki thi:

```dart
double budget = 25000;

String? budgetType = "Monthly";

bool food = false;
bool transport = false;
bool shopping = false;
bool entertainment = false;

bool autoSave = false;
```

---

# 🧠 State Identify Karne ka Rule

Ek simple rule:

> Agar variable ki value user interaction ke baad change hogi aur UI ko us change ke according update karna hai, to wo State ka part hona chahiye.

Examples:

```dart
double budget = 25000;
```

Slider se change hota hai.

Therefore:

```text
State ✅
```

---

```dart
bool food = false;
```

Checkbox se change hota hai.

Therefore:

```text
State ✅
```

---

```dart
bool autoSave = false;
```

Switch se change hota hai.

Therefore:

```text
State ✅
```

---

# 🔥 Dynamic UI

Aaj ki screen static nahi thi.

User ke actions ke according UI change hui.

```text
User Input
    ↓
State Change
    ↓
setState()
    ↓
UI Rebuild
    ↓
New UI
```

---

# 💰 Budget Planner Example

## Initial State

```text
Budget: ₹25,000

Budget Type:
● Monthly
○ Weekly

Categories:
☐ Food
☐ Transport
☐ Shopping
☐ Entertainment

Auto Save:
OFF
```

---

## User Interaction

User:

```text
Slider → ₹30,000
Weekly → Select
Food → Select
Transport → Select
Auto Save → ON
```

---

## Updated State

```text
Budget: ₹30,000

Budget Type:
○ Monthly
● Weekly

Categories:
☑ Food
☑ Transport
☐ Shopping
☐ Entertainment

Auto Save:
ON
```

Ye hi **Dynamic UI** hai.

---

# 🏗️ Widget Tree

```text
Scaffold
│
├── AppBar
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
                         ├── Budget Card
                         │    ├── Text
                         │    ├── Text
                         │    └── Slider
                         │
                         ├── SizedBox
                         │
                         ├── Budget Type
                         │    ├── Text
                         │    └── Row
                         │         ├── Radio
                         │         ├── Text
                         │         ├── Radio
                         │         └── Text
                         │
                         ├── SizedBox
                         │
                         ├── Spending Categories
                         │    ├── Checkbox
                         │    ├── Checkbox
                         │    ├── Checkbox
                         │    └── Checkbox
                         │
                         ├── SizedBox
                         │
                         ├── Settings
                         │    └── Switch
                         │
                         └── Save Button
```

---

# 🧪 Practice Questions

## Q1.

Agar user ko age `18` se `60` ke beech select karni ho to kaunsa widget use karoge?

```text
Answer: ________
```

---

## Q2.

Agar user ko gender me sirf ek option choose karna ho:

```text
Male
Female
Other
```

Kaunsa widget?

```text
Answer: ________
```

---

## Q3.

Agar user multiple hobbies choose kar sakta hai:

```text
Coding
Gaming
Music
Sports
```

Kaunsa widget?

```text
Answer: ________
```

---

## Q4.

Dark Mode ON/OFF karna ho to?

```text
Answer: ________
```

---

## Q5.

`setState()` ka main purpose kya hai?

```text
Answer:
________________________________
________________________________
```

---

# 📝 Quick Revision

```text
Slider
→ Range me se value select

Radio
→ Single option select

Checkbox
→ Multiple options select

Switch
→ ON / OFF

setState()
→ State change ke baad UI rebuild

SafeArea
→ Unsafe screen areas se protection

SingleChildScrollView
→ Large content ko scrollable banana
```

---

# 🚀 Day 12 Final Learning Flow

```text
User Interaction
       ↓
Input Control
       ↓
onChanged()
       ↓
New Value
       ↓
setState()
       ↓
State Update
       ↓
build()
       ↓
Dynamic UI
```

---

# 🏆 Day 12 Status

```text
Day: 12
Topic: More Input Controls
Project: Budget Planner
Status: ✅ Completed
```

---

# 🔜 Next Day

## Day 13 — Conditional UI

Next concepts:

```text
if / else in UI
      ↓
Ternary Operator
      ↓
Visibility
      ↓
Dynamic Widgets
      ↓
Loading State
      ↓
Empty State
      ↓
Result State
```

Goal:

> User ki current state ke according different UI display karna.

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