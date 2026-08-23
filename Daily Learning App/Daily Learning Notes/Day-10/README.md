# 🚀 Flutter Journey — Day 10

## 🧩 Day 10 — Forms + Validation

Aaj maine Flutter me **Forms aur Form Validation** practically learn kiya.

Day 10 ka main focus tha user se input lena aur input ko validate karna before processing it.

---

## 📚 Topics Covered

* ✅ `Form`
* ✅ `GlobalKey<FormState>`
* ✅ `TextFormField`
* ✅ `validator`
* ✅ Required field validation
* ✅ Email validation
* ✅ Password validation
* ✅ `formKey.currentState!.validate()`
* ✅ Valid / Invalid form handling
* ✅ `obscureText`
* ✅ Password Show / Hide
* ✅ Dynamic visibility icon
* ✅ `setState()` for UI updates
* ✅ SnackBar concept
* ✅ Professional form UI styling

---

## 🧠 What I Learned

### 1. Form

`Form` widget multiple input fields ko ek single form ke andar manage karne ke liye use hota hai.

```dart
Form(
  key: formKey,
  child: Column(
    children: [
      // Form fields
    ],
  ),
)
```

---

### 2. GlobalKey<FormState>

Form ko bahar se control aur validate karne ke liye `GlobalKey<FormState>` use kiya.

```dart
final formKey = GlobalKey<FormState>();
```

Form ke saath:

```dart
Form(
  key: formKey,
  child: ...,
)
```

Validation trigger karne ke liye:

```dart
formKey.currentState!.validate()
```

---

### 3. TextFormField

`TextFormField` user input lene ke saath validation support karta hai.

```dart
TextFormField(
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    return null;
  },
)
```

---

### 4. Validator

`validator` user ke input ko check karta hai.

Agar input invalid hai to error message return hota hai:

```dart
return "Email is required";
```

Agar input valid hai:

```dart
return null;
```

---

## 📧 Email Validation

Email ko validate karne ke liye basic `@` check kiya:

```dart
validator: (value) {
  if (value == null || value.isEmpty) {
    return "Email is required";
  } else if (!value.contains("@")) {
    return "Enter a valid email";
  } else {
    return null;
  }
}
```

---

## 🔐 Password Validation

Password empty hai ya 8 characters se chhota hai, dono conditions check ki:

```dart
validator: (value) {
  if (value == null || value.isEmpty) {
    return "Password is required";
  } else if (value.length < 8) {
    return "Password must be at least 8 characters";
  } else {
    return null;
  }
}
```

---

## 👁️ Password Show / Hide

Password ko hide/show karne ke liye:

```dart
bool hidden = true;
```

`TextFormField` me:

```dart
obscureText: hidden,
```

Button press par:

```dart
setState(() {
  hidden = !hidden;
});
```

Dynamic icon:

```dart
icon: Icon(
  hidden
      ? Icons.visibility
      : Icons.visibility_off,
)
```

### Logic

```text
hidden = true
      ↓
Password Hidden
      ↓
visibility icon

hidden = false
      ↓
Password Visible
      ↓
visibility_off icon
```

---

## ✅ Form Validation

Login button press hone par complete form validate kiya:

```dart
if (formKey.currentState!.validate()) {
  print("FORM VALID");
} else {
  print("FORM INVALID");
}
```

### Flow

```text
Login Button
     ↓
validate()
     ↓
Run all validators
     ↓
 ┌───────────────┐
 │               │
Valid          Invalid
 │               │
 ↓               ↓
Success        Error
```

---

## 🎨 UI Design

### Color Palette

```text
Background  → Colors.grey.shade900
Card        → Colors.grey.shade800
Primary     → Colors.cyanAccent
Input       → Colors.white
Text        → Colors.white / Colors.white70
Border      → Colors.cyanAccent
```

### Spacing Used

```text
Container Padding → 30
TextField Gap     → 18
Button Gap        → 20
Bottom Text Gap   → 12
```

### Card Styling

```dart
BoxDecoration(
  color: Colors.grey.shade800,
  borderRadius: BorderRadius.circular(18),
  border: Border.all(
    color: Colors.cyanAccent,
    width: 1,
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.cyanAccent,
      blurRadius: 22,
      spreadRadius: 7,
      offset: Offset(0, 4),
    ),
  ],
)
```

---

# 🛠️ Mini Project

## 🔐 Login Form

Aaj maine ek functional **Login Form UI** banaya.

### Features

* 📧 Email input
* 🔐 Password input
* 👁️ Show / Hide password
* ✅ Required field validation
* 📧 Basic email validation
* 🔑 Password minimum 8 characters validation
* 🎨 Styled input fields
* 🔘 Login button
* 🧩 Form state validation

---

## 📂 Day 10 Structure

```text
day-10_screens/
│
└── login_screen.dart
```

---

## 🧠 Key Learning

> `Form` fields ko group karta hai,
> `validator` input ko check karta hai,
> `GlobalKey<FormState>` form ko control karta hai,
> aur `validate()` saare validators ko run karta hai.

---

# 🔥 Day 10 Challenge

Build a Login Form with:

* [x] Email validation
* [x] Password validation
* [x] Password show/hide
* [x] Login button
* [x] Valid / Invalid form handling

### Status

**✅ Completed**

---

# 📊 Flutter Journey Progress

| Day        | Topic                             | Status |
| ---------- | --------------------------------- | ------ |
| Day 01     | Flutter Fundamentals              | ✅      |
| Day 02     | Basic UI                          | ✅      |
| Day 03     | Container & Padding               | ✅      |
| Day 04     | Row & Column                      | ✅      |
| Day 05     | Layout Widgets                    | ✅      |
| Day 06     | Basic Navigation                  | ✅      |
| Day 07     | Buttons + Network Images          | ✅      |
| Day 08     | Images + TextField Basics         | ✅      |
| Day 09     | TextField + TextEditingController | ✅      |
| **Day 10** | **Forms + Validation**            | **✅**  |
| Day 11     | State Management Basics           | ⏳      |

---

# 🚀 Next Day

## DAY 11 — STATE MANAGEMENT BASICS

Next we will learn:

* StatefulWidget deeper
* `setState()`
* State variables
* UI rebuilding
* Dynamic Text
* Dynamic Colors
* Interactive Counter
* Calculator logic

---

# 🏆 Progress

**Flutter Journey: 10 Days Completed 🎯**

---

## 💡 Key Takeaway

Day 10 me maine Flutter forms ko practically handle karna seekha — user input lena, validate karna, password visibility control karna aur valid/invalid form ke according UI response dena.

**Next Goal → State Management with `setState()` 🚀**
