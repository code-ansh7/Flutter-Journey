# 🚀 Flutter Journey - Day 01 Notes

**📅 Date:** 28 July 2026

---

# 🎯 Objective

Understand the basic structure of a Flutter application and build the first Flutter app.

---

# 📚 Topics Covered

- Flutter Project Structure
- main()
- runApp()
- MaterialApp
- Scaffold
- Center
- Text
- Widget
- Widget Tree
- Parent & Child Relationship

---

# 1️⃣ main()

### Definition

`main()` is the entry point of every Flutter application.

Without `main()`, the application cannot start.

Example:

```dart
void main() {

}
```

---

# 2️⃣ runApp()

### Definition

`runApp()` tells Flutter which widget should be displayed as the root of the application.

Example:

```dart
runApp(
    MaterialApp()
);
```

---

# 3️⃣ MaterialApp

### Purpose

Acts as the root widget of a Material Design application.

(Currently we are understanding it as the App Manager.)

Responsibilities:

- Starts the app
- Provides Material Design
- Manages theme
- Manages routing
- Holds the home screen

---

# 4️⃣ Scaffold

### Purpose

Provides the basic screen structure.

It can contain:

- AppBar
- Body
- FloatingActionButton
- Drawer
- BottomNavigationBar

For now we only learned:

```dart
body:
```

---

# 5️⃣ Center

### Purpose

Places its child widget at the center of the available space.

Example

```dart
Center(
   child: Text("Hello")
)
```

---

# 6️⃣ Text

### Purpose

Displays text on the screen.

Example

```dart
Text("Hello Ansh")
```

---

# 7️⃣ Widget

### Definition

A Widget is the basic building block of Flutter UI.

Almost everything visible in Flutter is a Widget.

Examples

- MaterialApp
- Scaffold
- Center
- Text
- Button
- Image
- Icon

---

# 8️⃣ Widget Tree

Flutter UI is created by arranging widgets inside other widgets.

Example

```text
MaterialApp
    │
Scaffold
    │
Center
    │
Text
```

Parent Widget

↓

Child Widget

↓

Leaf Widget

---

# 9️⃣ Parent & Child Relationship

Example

```dart
Center(
   child: Text("Hello")
)
```

Here,

Property

```
child
```

Value

```
Text()
```

Another Example

```dart
Scaffold(
    body: Center()
)
```

Property

```
body
```

Value

```
Center()
```

---

# 🔟 Final Code

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Hello Ansh"),
        ),
      ),
    ),
  );
}
```

---

# 💡 Important Points

✅ Flutter is Declarative.

✅ Widgets are Objects.

✅ Widgets are created from Classes.

✅ runApp() displays the root widget.

✅ MaterialApp is currently acting as our App Manager.

✅ Scaffold creates the screen structure.

✅ Center aligns its child at the center.

✅ Text displays text.

---

# 🧠 Interview Questions

### Q1. What is Flutter?

### Q2. What is a Widget?

### Q3. What is Widget Tree?

### Q4. What is the role of runApp()?

### Q5. What is the purpose of main()?

### Q6. What is MaterialApp?

### Q7. What is Scaffold?

### Q8. Difference between Parent and Child Widget?

---

# 🏆 Today's Achievement

✅ Started Flutter Journey

✅ Built First Flutter Application

✅ Successfully Ran Flutter App

✅ Understood Widget Tree

---

# 🚀 Next Day Preview

- MyApp
- StatelessWidget
- build()
- BuildContext
- const
- Why runApp(const MyApp())

---

**Status:** ✅ Flutter Day 01 Completed