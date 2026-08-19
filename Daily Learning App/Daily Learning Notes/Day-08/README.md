````text id="k7m2q1"
# 🚀 Flutter Day 08 — Image Styling, Local Assets & Text Input

> Day 08 focused on taking Flutter UI one step further — styling images, using local assets, and building a professional search input screen.

---

## 🎯 Today's Goal

Today I learned and practiced:

- `ClipRRect`
- Rounded image clipping
- `Image.asset()`
- Local assets
- Asset declaration in `pubspec.yaml`
- `BoxFit.cover`
- Image + Container
- `TextField`
- `InputDecoration`
- `hintText`
- `prefixIcon`
- `suffixIcon`
- `filled`
- `fillColor`
- `OutlineInputBorder`
- `borderRadius`
- `enabledBorder`
- `focusedBorder`
- `SizedBox` for width and height
- `StatefulWidget` basics
- `TextEditingController`
- `IconButton`
- Clearing TextField input with `controller.clear()`

---

# 🖼️ Part 1 — Image Styling

## ClipRRect

`ClipRRect` is used to clip a widget into a rounded rectangle shape.

### Basic Structure

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
Child gets clipped inside the boundary
```

---

# 📦 Container + ClipRRect + Image

A common structure for a styled image card is:

```text
Container
└── ClipRRect
    └── Image
```

### Responsibilities

`Container`:

* Size
* Padding
* Background
* Border
* Border radius
* Shadow
* General styling

`ClipRRect`:

* Clips the child into a rounded shape

---

# 📁 Part 2 — Local Assets

Instead of loading an image from the internet with:

```dart
Image.network(
  "IMAGE_URL",
)
```

Flutter can load an image stored inside the project using:

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

## pubspec.yaml

The asset folder needs to be declared in `pubspec.yaml`.

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/
```

### Important

The `/` at the end specifies the directory:

```yaml
- assets/images/
```

The path used in Dart must match the actual file path:

```dart
Image.asset(
  "assets/images/ansh.jpeg",
)
```

---

# 🖼️ Image.asset()

`Image.asset()` loads an image from the Flutter project's local assets.

```dart
Image.asset(
  "assets/images/ansh.jpeg",
  height: 200,
  width: 180,
  fit: BoxFit.cover,
)
```

---

# 🧠 Network Image vs Local Asset

```text
Image.network()
        ↓
Internet
        ↓
Flutter App
```

```text
Image.asset()
        ↓
Project Assets
        ↓
Flutter App
```

---

# 🎵 Day 08 Image Practice

The previous Music Player UI was upgraded using:

* Local image
* `Image.asset()`
* `ClipRRect`
* `BoxFit.cover`
* Styled `Container`
* Song name
* Artist name
* Buttons
* Favorite action

The image was loaded using:

```dart
Image.asset(
  "assets/images/ansh.jpeg",
  height: 200,
  width: 180,
  fit: BoxFit.cover,
)
```

---

# 🔎 Part 3 — TextField

A `TextField` allows the user to enter text.

### Basic Syntax

```dart
TextField()
```

A `TextField` is useful for:

* Search
* Login
* Forms
* Todo items
* Expense input
* User information

---

# 🎨 InputDecoration

`InputDecoration` is used to customize the appearance and behavior-related UI of a `TextField`.

Example:

```dart
TextField(
  decoration: InputDecoration(
    hintText: "Search Something...",
  ),
)
```

---

# 📝 hintText

`hintText` gives the user an idea about what should be entered.

```dart
hintText: "Search Something..."
```

Mental model:

```text
hintText
   ↓
"What should I type here?"
```

---

# 🔍 prefixIcon

`prefixIcon` places a widget at the beginning/left side of the input field.

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

# ❌ suffixIcon

`suffixIcon` places a widget at the ending/right side of the input field.

```dart
suffixIcon: Icon(Icons.clear),
```

It can also contain an interactive widget such as `IconButton`.

Example:

```dart
suffixIcon: IconButton(
  onPressed: () {
    // action
  },
  icon: Icon(Icons.clear),
),
```

---

# 🎨 filled & fillColor

```dart
filled: true,
fillColor: Colors.white,
```

### `filled`

Enables the background fill.

### `fillColor`

Controls the background color of the field.

Mental model:

```text
filled
   ↓
Enable background

fillColor
   ↓
Choose background color
```

---

# 🟦 OutlineInputBorder

An outline border can be added using:

```dart
border: OutlineInputBorder(),
```

Rounded corners can be added with:

```dart
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
)
```

---

# 🟢 enabledBorder

`enabledBorder` controls the border when the field is enabled but not focused.

Example:

```dart
enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(
    color: Colors.grey.shade300,
  ),
),
```

---

# 🔵 focusedBorder

`focusedBorder` controls the border when the user focuses the field.

Example:

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
   │      ↓
   │  enabledBorder
   │
   └── User taps/types
          ↓
      focusedBorder
```

---

# 📏 TextField Width & Height

A `TextField` can be constrained using `SizedBox`.

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

`SizedBox` can be used for:

```text
1. Spacing
2. Width/height constraints
```

Example spacing:

```dart
SizedBox(
  height: 10,
)
```

Example size constraint:

```dart
SizedBox(
  height: 55,
  width: 320,
  child: TextField(),
)
```

---

# 🔄 Part 4 — StatefulWidget Basics

The Search Screen was converted from `StatelessWidget` to `StatefulWidget`.

### Basic Structure

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

---

# 🧠 StatelessWidget vs StatefulWidget

## StatelessWidget

Used when the widget does not need to manage changing internal state.

```text
StatelessWidget
      ↓
Mostly static UI
```

## StatefulWidget

Used when the associated state can change and needs to be managed.

```text
StatefulWidget
      ↓
State object
      ↓
Changing data / behavior
      ↓
UI
```

### Examples of changing state

```text
Counter
0 → 1 → 2

Favorite
♡ → ❤️

Search
Empty → "Flutter"

Login
Logged Out → Logged In
```

---

# 🎮 Part 5 — TextEditingController

A `TextEditingController` allows us to access and control the text inside a `TextField`.

### Creating a Controller

```dart
final TextEditingController searchController =
    TextEditingController();
```

### Connecting It

```dart
TextField(
  controller: searchController,
)
```

### Reading Text

```dart
searchController.text
```

For example, if the user enters:

```text
Flutter Developer
```

then:

```dart
searchController.text
```

contains:

```text
Flutter Developer
```

---

# ❌ Clearing TextField

The controller can also clear the input:

```dart
searchController.clear();
```

This was used with an `IconButton`:

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
User types
    ↓
TextField
    ↓
TextEditingController
    ↓
searchController.text
    ↓
User presses ❌
    ↓
searchController.clear()
    ↓
TextField becomes empty
```

---

# 🔎 Final Search Screen Structure

The Day 08 Search Screen currently follows this structure:

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

# 💡 Key Takeaways

* `ClipRRect` clips a child into a rounded rectangle.
* `Image.asset()` loads local project images.
* Assets must be declared in `pubspec.yaml`.
* `BoxFit.cover` controls how an image fits its available area.
* `TextField` accepts user text input.
* `InputDecoration` customizes a TextField.
* `hintText` provides input guidance.
* `prefixIcon` places an icon at the beginning.
* `suffixIcon` places an icon/action at the end.
* `filled` enables a filled background.
* `fillColor` controls the field background.
* `OutlineInputBorder` creates an outline.
* `borderRadius` rounds the input field corners.
* `enabledBorder` styles the normal enabled state.
* `focusedBorder` styles the focused state.
* `SizedBox` can control width and height.
* `StatefulWidget` is useful when state needs to be managed.
* `TextEditingController` can access and control TextField text.
* `controller.clear()` clears the TextField.

---

# 🐛 Common Mistakes

## 1. Wrong Asset Path

```dart
Image.asset("assets/image/ansh.jpeg")
```

when the actual folder is:

```text
assets/images/
```

Always match the actual path.

---

## 2. Forgetting the Asset Declaration

The asset must be declared in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```

---

## 3. Forgetting `filled: true`

Using only:

```dart
fillColor: Colors.white,
```

does not give the intended filled field appearance.

Use:

```dart
filled: true,
fillColor: Colors.white,
```

---

## 4. Mixing Border Radius

Keep `enabledBorder` and `focusedBorder` consistent if the shape should remain the same.

Example:

```dart
borderRadius: BorderRadius.circular(20)
```

---

## 5. Forgetting to Connect Controller

Creating:

```dart
final TextEditingController searchController =
    TextEditingController();
```

is not enough.

Connect it:

```dart
TextField(
  controller: searchController,
)
```

---

# 📊 Day 08 Progress

```text
Day: 08
Status: 🟡 In Progress

Topics Practiced:
✅ ClipRRect
✅ Image.asset()
✅ Local Assets
✅ pubspec.yaml asset declaration
✅ BoxFit.cover
✅ Image + Container
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
✅ SizedBox width/height
✅ StatefulWidget basics
✅ TextEditingController
✅ controller.clear()

Practice Screens:
🎵 Music Player UI
🔎 Search Screen

Current Focus:
🧠 StatefulWidget + TextEditingController
```

---

# 🔮 Next

Day 08 will continue from the current Search Screen.

Next logical concepts:

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
```

Day 08 will **not** be marked complete until the remaining concepts are properly practiced.

```
```