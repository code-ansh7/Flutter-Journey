````markdown
# Flutter Day 08 — Notes

## 🎯 Day Goal

Day 08 mein maine Flutter UI ko aur practical banaya.

Main focus:

- Image styling
- Local assets
- `Image.asset()`
- `ClipRRect`
- Professional Search UI
- `TextField`
- `InputDecoration`
- `TextEditingController`
- `StatefulWidget` basics

---

# 🖼️ 1. ClipRRect

`ClipRRect` ka use kisi widget ko rounded rectangle shape mein clip karne ke liye hota hai.

### Syntax

```dart
ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset(
    "assets/images/ansh.jpeg",
    width: 180,
    height: 200,
    fit: BoxFit.cover,
  ),
)
````

### Mental Model

```text
ClipRRect
    ↓
Rounded boundary
    ↓
Child us boundary ke andar clip hota hai
```

---

# 📦 2. Container + ClipRRect + Image

Image card mein commonly:

```text
Container
└── ClipRRect
    └── Image
```

### Container

Container mainly:

* Size
* Padding
* Background
* Border
* BorderRadius
* BoxShadow
* General styling

handle karta hai.

### ClipRRect

ClipRRect:

* Child ko rounded shape mein clip karta hai.

---

# 📁 3. Local Assets

Internet image ke liye:

```dart
Image.network(
  "IMAGE_URL",
)
```

Local project image ke liye:

```dart
Image.asset(
  "assets/images/ansh.jpeg",
)
```

---

## Asset Folder Structure

```text
flutter_project/
│
├── assets/
│   └── images/
│       └── ansh.jpeg
│
├── lib/
│
└── pubspec.yaml
```

---

# ⚙️ 4. pubspec.yaml mein Assets

Flutter ko local assets ke baare mein batana padta hai.

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/
```

### Important

Directory ke liye trailing `/` use kiya:

```yaml
- assets/images/
```

Isi se asset path properly recognize hua.

Dart mein:

```dart
Image.asset(
  "assets/images/ansh.jpeg",
)
```

Path exact match hona chahiye.

---

# 🖼️ 5. Image.asset()

Local image display karne ke liye:

```dart
Image.asset(
  "assets/images/ansh.jpeg",
  height: 200,
  width: 180,
  fit: BoxFit.cover,
)
```

### Important Properties

```text
height
→ image ki height

width
→ image ki width

fit
→ image available area mein kaise fit hogi
```

---

# 🎨 6. BoxFit.cover

```dart
fit: BoxFit.cover,
```

`BoxFit.cover` image ko available area ko cover karne mein help karta hai.

Mental model:

```text
Image
   ↓
Fixed width + height
   ↓
BoxFit.cover
   ↓
Available area cover
```

---

# 🎵 7. Music Player Practice

Day 08 mein Day 07 ke Music Player ko local assets aur image styling ke saath upgrade kiya.

Used:

* `Container`
* `ClipRRect`
* `Image.asset()`
* `BoxFit.cover`
* `Text`
* `Row`
* `ElevatedButton`
* `OutlinedButton`
* `TextButton`
* `IconButton`

Image:

```dart
ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset(
    "assets/images/ansh.jpeg",
    height: 200,
    width: 180,
    fit: BoxFit.cover,
  ),
)
```

---

# 🔎 8. TextField

`TextField` user se text input lene ke liye use hota hai.

Examples:

* Search
* Login
* Todo
* Expense Tracker
* Profile
* Forms

### Basic Syntax

```dart
TextField()
```

---

# 🎨 9. InputDecoration

`InputDecoration` `TextField` ko customize karne ke liye use hota hai.

Example:

```dart
TextField(
  decoration: InputDecoration(
    hintText: "Search Something...",
  ),
)
```

Mental Model:

```text
TextField
└── InputDecoration
    └── Field ki appearance/configuration
```

---

# 📝 10. hintText

`hintText` user ko batata hai ki field mein kya enter karna hai.

```dart
hintText: "Search Something...",
```

Mental Model:

```text
hintText
   ↓
"Yahan kya type karna hai?"
```

---

# 🔍 11. prefixIcon

`prefixIcon` field ke starting/left side par widget place karta hai.

```dart
prefixIcon: Icon(Icons.search),
```

Example:

```text
┌──────────────────────────────┐
│ 🔍  Search Something...      │
└──────────────────────────────┘
```

---

# ❌ 12. suffixIcon

`suffixIcon` field ke ending/right side par widget place karta hai.

Simple icon:

```dart
suffixIcon: Icon(Icons.clear),
```

Interactive icon:

```dart
suffixIcon: IconButton(
  onPressed: () {
    // action
  },
  icon: Icon(Icons.clear),
),
```

---

# 🎨 13. filled & fillColor

```dart
filled: true,
fillColor: Colors.white,
```

### filled

Background filling enable karta hai.

### fillColor

Background ka color decide karta hai.

Mental Model:

```text
filled
   ↓
Background fill enable

fillColor
   ↓
Background color
```

---

# 🟦 14. OutlineInputBorder

TextField ke around outline border ke liye:

```dart
border: OutlineInputBorder(),
```

Rounded border:

```dart
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
)
```

---

# 🟢 15. enabledBorder

Normal enabled state ka border customize karta hai.

```dart
enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(
    color: Colors.grey.shade300,
  ),
),
```

---

# 🔵 16. focusedBorder

Jab user TextField par click/type karta hai tab focused border apply hota hai.

```dart
focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(
    color: Colors.teal,
    width: 2,
  ),
),
```

### Mental Model

```text
TextField
│
├── Normal
│     ↓
│ enabledBorder
│
└── Focused
      ↓
  focusedBorder
```

---

# 📏 17. TextField Width & Height

TextField ko `SizedBox` ke andar wrap karke size control kar sakte hain.

```dart
SizedBox(
  height: 55,
  width: 320,
  child: TextField(
    // ...
  ),
)
```

### Important

`SizedBox` ka use do situations mein kiya:

### Spacing

```dart
SizedBox(
  height: 10,
)
```

### Size Constraint

```dart
SizedBox(
  height: 55,
  width: 320,
  child: TextField(),
)
```

---

# 🔄 18. StatelessWidget vs StatefulWidget

## StatelessWidget

StatelessWidget tab useful hai jab widget ko internally changing state manage nahi karni hoti.

Example:

```dart
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Welcome");
  }
}
```

Mental model:

```text
StatelessWidget
      ↓
Mostly static UI
```

---

## StatefulWidget

StatefulWidget tab use hota hai jab associated state change ho sakti hai aur us state ko manage karna ho.

Basic structure:

```dart
class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // UI
    );
  }
}
```

Mental model:

```text
StatefulWidget
      ↓
State object
      ↓
Changing data / behavior
      ↓
UI
```

---

# 🧠 19. StatefulWidget Kyun Use Kiya?

Search Screen mein humein user ke input ko control karna tha.

Flow:

```text
User
 ↓
TextField
 ↓
Controller
 ↓
Text access/control
 ↓
Clear action
```

Isliye Search Screen ko `StatefulWidget` mein convert kiya.

### Important

`TextField` ko `StatelessWidget` ke andar use karna possible hai.

`TextField` use karne ki wajah se StatefulWidget compulsory nahi hai.

Humne StatefulWidget use kiya kyunki humein screen ke state/control ko manage karna tha.

---

# 🎮 20. TextEditingController

`TextEditingController` TextField ke text ko access aur control karne ke liye use hota hai.

### Create Controller

```dart
final TextEditingController searchController =
    TextEditingController();
```

### TextField ke saath Connect

```dart
TextField(
  controller: searchController,
)
```

### Text Read Karna

```dart
searchController.text
```

Agar user type kare:

```text
Flutter Developer
```

to:

```dart
searchController.text
```

mein wahi text available hoga.

---

# ❌ 21. controller.clear()

TextField ka text clear karne ke liye:

```dart
searchController.clear();
```

Humne ise `IconButton` ke saath use kiya:

```dart
suffixIcon: IconButton(
  onPressed: () {
    searchController.clear();
  },
  icon: Icon(Icons.clear),
),
```

### Flow

```text
User types "Flutter"
        ↓
TextField
        ↓
searchController
        ↓
User presses ❌
        ↓
searchController.clear()
        ↓
TextField empty
```

---

# 🔎 22. Day 08 Search Screen

Final Search Screen mein ye concepts combine hue:

```text
SearchScreen
└── StatefulWidget
    │
    └── _SearchScreenState
        │
        ├── TextEditingController
        │
        └── Scaffold
            ├── AppBar
            │
            └── Column
                ├── Text
                ├── SizedBox
                └── SizedBox
                    └── TextField
                        └── InputDecoration
                            ├── hintText
                            ├── prefixIcon
                            ├── filled
                            ├── fillColor
                            ├── enabledBorder
                            ├── focusedBorder
                            └── suffixIcon
                                └── IconButton
```

---

# 🧠 Key Takeaways

* `ClipRRect` child ko rounded shape mein clip karta hai.
* `Image.asset()` local project image load karta hai.
* Assets ko `pubspec.yaml` mein declare karna hota hai.
* Asset path exact match hona chahiye.
* `BoxFit.cover` image fitting control karta hai.
* `TextField` user input leta hai.
* `InputDecoration` TextField ko customize karta hai.
* `hintText` input hint provide karta hai.
* `prefixIcon` starting side icon deta hai.
* `suffixIcon` ending side icon/action deta hai.
* `filled` background filling enable karta hai.
* `fillColor` background color set karta hai.
* `OutlineInputBorder` outline border deta hai.
* `borderRadius` corners round karta hai.
* `enabledBorder` normal state ka border control karta hai.
* `focusedBorder` focused state ka border control karta hai.
* `SizedBox` width/height constrain kar sakta hai.
* `StatefulWidget` changing state ko manage karne ke liye useful hai.
* `TextEditingController` TextField ke text ko access/control karta hai.
* `controller.clear()` TextField ka text clear karta hai.

---

# 🐛 Common Mistakes

### Wrong asset path

```dart
Image.asset("assets/image/ansh.jpeg")
```

jab actual folder ho:

```text
assets/images/
```

---

### Asset declare karna bhool jaana

```yaml
flutter:
  assets:
    - assets/images/
```

---

### filled ke bina fillColor

```dart
fillColor: Colors.white,
```

Instead:

```dart
filled: true,
fillColor: Colors.white,
```

---

### Controller ko TextField se connect na karna

Sirf controller banana enough nahi hai:

```dart
final TextEditingController searchController =
    TextEditingController();
```

Use TextField mein connect bhi karna hai:

```dart
TextField(
  controller: searchController,
)
```

---

# 📊 Day 08 Status

```text
Day: 08
Status: 🟡 In Progress

Image Concepts:
✅ ClipRRect
✅ Image.asset()
✅ Local Assets
✅ pubspec.yaml
✅ BoxFit.cover

Input Concepts:
✅ TextField
✅ InputDecoration
✅ hintText
✅ prefixIcon
✅ suffixIcon
✅ filled
✅ fillColor
✅ OutlineInputBorder
✅ borderRadius
✅ enabledBorder
✅ focusedBorder

Layout:
✅ SizedBox width
✅ SizedBox height

State:
✅ StatefulWidget basics
✅ TextEditingController
✅ controller.clear()

Practice:
🎵 Music Player UI
🔎 Professional Search Screen

Current Topic:
🧠 StatefulWidget + TextEditingController
```

---

# 🚀 Next Learning

```text
TextField
    ↓
TextEditingController
    ↓
StatefulWidget
    ↓
State
    ↓
setState()
    ↓
Dynamic UI
    ↓
Forms
    ↓
Validation
```