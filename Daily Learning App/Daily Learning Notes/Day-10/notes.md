# 📘 Flutter Journey — Day 10 Notes

# Forms + Validation

Day 10 me humne Flutter me **Form handling aur validation** seekha.

Aaj ka main goal tha:

> User se input lena → input check karna → invalid hone par error dikhana → valid hone par form submit karna.

---

# 1. Form Kya Hai?

Flutter me `Form` widget multiple input fields ko ek logical group me manage karne ke liye use hota hai.

### Example

```dart
Form(
  child: Column(
    children: [
      TextFormField(),
      TextFormField(),
      ElevatedButton(
        onPressed: () {},
        child: Text("Login"),
      ),
    ],
  ),
)
```

Yaha:

* `Form` → complete form ko represent karta hai
* `TextFormField` → user input leta hai
* `ElevatedButton` → form submit karta hai

---

# 2. Form Ki Zarurat Kyu Hoti Hai?

Agar Login Form me:

* Email
* Password

hain, to hume check karna padega:

```text
Email empty hai?
Password empty hai?
Email valid hai?
Password enough long hai?
```

Form validation isi ka solution hai.

---

# 3. Form Ka Basic Structure

```dart
Form(
  child: Column(
    children: [
      TextFormField(),
      TextFormField(),
      ElevatedButton(
        onPressed: () {},
        child: Text("Login"),
      ),
    ],
  ),
)
```

---

# 4. TextField vs TextFormField

## TextField

`TextField` normal user input ke liye use hota hai.

```dart
TextField()
```

Isme direct built-in `validator` nahi hota.

---

## TextFormField

`TextFormField` specially forms ke liye useful hai.

```dart
TextFormField(
  validator: (value) {
    // validation
  },
)
```

Isliye jab hume form validation karni ho to:

```dart
TextFormField
```

use karna better hai.

---

# 5. GlobalKey<FormState>

Form ko externally control karne ke liye `GlobalKey<FormState>` use kiya.

```dart
final formKey = GlobalKey<FormState>();
```

Ye key form ki state ko access karne me help karti hai.

---

# 6. Form Me Key Attach Karna

```dart
Form(
  key: formKey,
  child: Column(
    children: [
      TextFormField(),
    ],
  ),
)
```

Ab `formKey` ke through hum Form ki state access kar sakte hain.

---

# 7. Form Validation Trigger Karna

Login button ke andar:

```dart
if (formKey.currentState!.validate()) {
  print("FORM VALID");
} else {
  print("FORM INVALID");
}
```

### Important

```dart
validate()
```

form ke andar available validators ko run karta hai.

---

# 8. Validation Flow

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

# 9. Validator Kya Hai?

`validator` ek function hota hai jo user ke input ko check karta hai.

### Example

```dart
validator: (value) {
  if (value == null || value.isEmpty) {
    return "Email is required";
  }

  return null;
}
```

Validator ke do important results hote hain:

```text
Invalid → Error String
Valid   → null
```

---

# 10. `value` Kya Hai?

Validator me:

```dart
validator: (value) {
```

`value` user ke TextFormField me enter ki hui value hoti hai.

### Example

User enters:

```text
ansh@gmail.com
```

To validator ke andar:

```dart
value
```

roughly:

```text
"ansh@gmail.com"
```

hoga.

---

# 11. `value.isEmpty`

Check karta hai ki string empty hai ya nahi.

```dart
if (value.isEmpty) {
  return "Email is required";
}
```

### Example

```text
value = ""
```

To:

```dart
value.isEmpty
```

`true` hoga.

---

# 12. `value == null`

Null safety ke context me `value` null ho sakti hai.

Isliye safe validation:

```dart
if (value == null || value.isEmpty) {
  return "Email is required";
}
```

Yaha:

```dart
value == null
```

pehle check hota hai.

Agar value null nahi hai tab:

```dart
value.isEmpty
```

check hota hai.

---

# 13. `||` OR Operator

```dart
value == null || value.isEmpty
```

ka meaning:

```text
Condition 1 OR Condition 2
```

Agar dono me se koi bhi condition true hai, complete condition true hogi.

### Example

```text
true || false = true
false || true = true
false || false = false
```

---

# 14. `return "Email is required"`

Agar validator invalid input detect karta hai:

```dart
return "Email is required";
```

to Flutter field ke neeche error message show karta hai.

### Example

```text
┌──────────────────────────────┐
│ 📧 Enter your email...       │
└──────────────────────────────┘
  Email is required
```

---

# 15. `return null`

Agar input valid hai:

```dart
return null;
```

iska meaning hai:

> Is field me koi validation error nahi hai.

So:

```text
return String
      ↓
  Invalid ❌

return null
      ↓
   Valid ✅
```

---

# 16. Email Validation

Humne basic email validation banayi:

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

### Logic

```text
Empty
 ↓
"Email is required"

No @
 ↓
"Enter a valid email"

Valid
 ↓
null
```

> **Note:** Ye **basic validation** hai. Ye complete professional email validation nahi hai.

---

# 17. `contains("@")`

```dart
value.contains("@")
```

check karta hai ki string ke andar `@` present hai ya nahi.

### Example

```text
ansh@gmail.com
```

contains `@` → `true`

```text
anshgmail.com
```

contains `@` → `false`

---

# 18. `!` NOT Operator

Humne likha:

```dart
!value.contains("@")
```

`!` condition ka result reverse karta hai.

### Example

```text
value.contains("@") = true
```

Then:

```text
!true = false
```

Aur:

```text
value.contains("@") = false
```

Then:

```text
!false = true
```

Isliye:

```dart
else if (!value.contains("@"))
```

ka meaning:

> Agar email me `@` nahi hai.

---

# 19. Password Validation

Humne password ke liye:

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

### Logic

```text
Empty
 ↓
"Password is required"

Less than 8 characters
 ↓
"Password must be at least 8 characters"

8 or more characters
 ↓
null
```

---

# 20. `value.length`

String ke characters ki count return karta hai.

### Example

```dart
"hello".length
```

Result:

```text
5
```

So:

```dart
value.length < 8
```

means:

> Password ke characters 8 se kam hain.

---

# 21. Password Hide Karna

Password normally screen par visible nahi hona chahiye.

Flutter me:

```dart
obscureText: true,
```

use kar sakte hain.

### Example

```dart
TextFormField(
  obscureText: true,
)
```

Output:

```text
********
```

---

# 22. Dynamic Password Visibility

Humne:

```dart
bool hidden = true;
```

banaya.

Meaning:

```text
true  → password hidden
false → password visible
```

TextFormField:

```dart
obscureText: hidden,
```

---

# 23. `setState()` + Boolean Toggle

Button press par:

```dart
setState(() {
  hidden = !hidden;
});
```

Ye bahut important pattern hai.

### Example

```text
hidden = true
       ↓
     !true
       ↓
hidden = false
```

Next click:

```text
hidden = false
       ↓
     !false
       ↓
hidden = true
```

---

# 24. Password Visibility Flow

```text
             Button Click
                  ↓
          setState() called
                  ↓
           hidden = !hidden
                  ↓
        ┌─────────┴─────────┐
        ↓                   ↓
 hidden = true        hidden = false
        ↓                   ↓
Password Hidden       Password Visible
        ↓                   ↓
visibility icon      visibility_off icon
```

---

# 25. Dynamic Icon

Humne ternary operator use kiya:

```dart
icon: Icon(
  hidden
      ? Icons.visibility
      : Icons.visibility_off,
)
```

### Ternary Structure

```text
condition ? trueValue : falseValue
```

So:

```text
hidden == true
      ↓
Icons.visibility

hidden == false
      ↓
Icons.visibility_off
```

---

# 26. Ternary Operator

Basic syntax:

```dart
condition ? value1 : value2
```

### Example

```dart
int age = 20;

String result = age >= 18
    ? "Adult"
    : "Minor";
```

Agar condition `true` hai to first value milegi.

Agar condition `false` hai to second value milegi.

---

# 27. Form + Validation Complete Flow

```text
User Input
    ↓
TextFormField
    ↓
validator
    ↓
Check Input
    ↓
 ┌───────────────┐
 │               │
Valid          Invalid
 │               │
 ↓               ↓
null          Error String
 │               │
 ↓               ↓
Success       Error Message
```

---

# 28. Login Form Structure

Our Day-10 project structure:

```text
LoginScreen
│
├── Scaffold
│
├── AppBar
│
└── Center
    │
    └── Container
        │
        └── Form
            │
            ├── Email TextFormField
            │   └── Email Validator
            │
            ├── Password TextFormField
            │   ├── Password Validator
            │   └── Visibility Toggle
            │
            └── Login Button
                └── Form Validation
```

---

# 29. Professional UI Styling

Day 10 me humne ek dark modern UI banayi.

## Background

```dart
Colors.grey.shade900
```

## Card

```dart
Colors.grey.shade800
```

## Primary Accent

```dart
Colors.cyanAccent
```

## Input

```dart
Colors.white
```

## Secondary Text

```dart
Colors.white70
```

---

# 30. Container Spacing

Humne card ke andar:

```dart
padding: EdgeInsets.all(30),
```

use kiya.

Meaning:

```text
Top    → 30
Right  → 30
Bottom → 30
Left   → 30
```

---

# 31. SizedBox

Fields ke beech spacing:

```dart
SizedBox(height: 18)
```

Button ke upar:

```dart
SizedBox(height: 20)
```

Text ke upar:

```dart
SizedBox(height: 12)
```

Spacing UI ko clean banati hai.

---

# 32. Border Radius

Input fields:

```dart
borderRadius: BorderRadius.circular(20)
```

Card:

```dart
borderRadius: BorderRadius.circular(18)
```

Rounded corners modern UI ke liye commonly use kiye jaate hain.

---

# 33. BoxShadow

Card me:

```dart
BoxShadow(
  color: Colors.cyanAccent,
  blurRadius: 22,
  spreadRadius: 7,
  offset: Offset(0, 4),
)
```

use kiya.

Isse card ke around glowing effect create hua.

---

# 34. Important Code

Day 10 ke core concepts ka combined example:

```dart
final formKey = GlobalKey<FormState>();

bool hidden = true;

Form(
  key: formKey,
  child: Column(
    children: [

      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Email is required";
          } else if (!value.contains("@")) {
            return "Enter a valid email";
          } else {
            return null;
          }
        },
      ),

      SizedBox(height: 18),

      TextFormField(
        obscureText: hidden,

        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Password is required";
          } else if (value.length < 8) {
            return "Password must be at least 8 characters";
          } else {
            return null;
          }
        },

        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidden = !hidden;
              });
            },
            icon: Icon(
              hidden
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),
      ),

      SizedBox(height: 20),

      ElevatedButton(
        onPressed: () {

          if (formKey.currentState!.validate()) {
            print("FORM VALID");
          } else {
            print("FORM INVALID");
          }

        },
        child: Text("Login"),
      ),
    ],
  ),
)
```

---

# 35. Day 10 Me Sabse Important Concepts

### Concept 1

```text
Form
```

Multiple form fields ko group karta hai.

### Concept 2

```dart
GlobalKey<FormState>
```

Form ko externally access/control karne deta hai.

### Concept 3

```dart
validator
```

Input ko validate karta hai.

### Concept 4

```dart
return null;
```

Validation successful hone ka signal hai.

### Concept 5

```dart
validate()
```

Saare validators run karta hai.

### Concept 6

```dart
setState()
```

State change ke baad UI rebuild karwata hai.

### Concept 7

```dart
obscureText
```

Password ko hide/show karta hai.

### Concept 8

```dart
condition ? trueValue : falseValue
```

Ternary operator dynamic UI ke liye useful hai.

---

# 36. Common Mistakes

## ❌ Mistake 1

Form me `key` nahi lagana:

```dart
Form(
  child: ...
)
```

## ✅ Correct

```dart
Form(
  key: formKey,
  child: ...
)
```

---

## ❌ Mistake 2

Validator me invalid input ke baad `null` return karna.

```dart
if (value.isEmpty) {
  return null;
}
```

Ye galat logic hoga.

## ✅ Correct

```dart
if (value.isEmpty) {
  return "Field is required";
}
```

---

## ❌ Mistake 3

Valid input par error string return karna.

## ✅ Correct

Valid input:

```dart
return null;
```

---

## ❌ Mistake 4

`setState()` ke bahar state change karke UI update expect karna.

## ✅ Correct

```dart
setState(() {
  hidden = !hidden;
});
```

---

# 37. Mental Model

Day 10 ka complete mental model:

```text
              FORM
                │
                ↓
        Multiple Input Fields
                │
                ↓
          TextFormField
                │
                ↓
            validator
                │
                ↓
          Check Input
                │
        ┌───────┴───────┐
        ↓               ↓
     Valid           Invalid
        ↓               ↓
  return null      Error String
        ↓               ↓
     Success        Show Error
```

Password visibility:

```text
Boolean State
     ↓
hidden
     ↓
setState()
     ↓
UI Rebuild
     ↓
obscureText + Dynamic Icon
```

---

# 38. What I Can Now Build

After Day 10, I can build basic forms such as:

* Login Form
* Registration Form
* Contact Form
* Feedback Form
* Search Form
* Basic Profile Form

with input validation.

---

# 🏆 Day 10 Summary

Today I learned how to:

* Create a `Form`
* Create `GlobalKey<FormState>`
* Use `TextFormField`
* Write validators
* Validate required fields
* Validate email
* Validate password length
* Use `validate()`
* Understand `return null`
* Hide/show password
* Toggle boolean state
* Change icons dynamically
* Use `setState()`
* Build a professional Login Form UI

---

# 📝 One-Line Revision

> **Form manages fields → Validator checks input → validate() runs validators → Error String means invalid → null means valid → setState() rebuilds UI.**

---

# 🚀 Next: Day 11

## State Management Basics

### Topics

* StatefulWidget deeper
* State variables
* `setState()`
* UI rebuilding
* Dynamic Text
* Dynamic Colors
* Interactive Counter
* Calculator logic

---

# 🎯 Day 10 Status

**✅ COMPLETED**