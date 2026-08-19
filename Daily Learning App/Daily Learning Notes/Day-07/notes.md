````markdown
# Flutter Day 07 — Buttons & Network Images

## 🎯 Day Goal

Day 07 mein humne Flutter ke different buttons, button styling aur network images ko practically use kiya.

Main focus:

- `ElevatedButton`
- `OutlinedButton`
- `TextButton`
- `IconButton`
- `onPressed`
- Button styling
- `styleFrom()`
- `backgroundColor`
- `foregroundColor`
- `BorderSide`
- Button shapes
- `Image.network()`
- Image `width`
- Image `height`
- `BoxFit.cover`

---

# 🧠 1. Buttons in Flutter

Flutter mein buttons user se interaction lene ke liye use hote hain.

Examples:

- Play
- Cancel
- Submit
- Login
- Favorite
- View Details

Button ke andar generally ek child hota hai, jaise `Text` ya `Icon`.

---

# 🔘 2. ElevatedButton

`ElevatedButton` ek filled/elevated style ka button hota hai.

### Basic Syntax

```dart
ElevatedButton(
  onPressed: () {
    // action
  },
  child: Text("PLAY"),
)
````

### Important Properties

* `onPressed` → button click hone par kya hoga
* `child` → button ke andar kya dikhega

### Example

```dart
ElevatedButton(
  onPressed: () {
    print("Play clicked");
  },
  child: Text("PLAY"),
)
```

---

# 🟦 3. OutlinedButton

`OutlinedButton` generally border ke saath button display karta hai.

### Syntax

```dart
OutlinedButton(
  onPressed: () {
    // action
  },
  child: Text("CANCEL"),
)
```

### Example

```dart
OutlinedButton(
  onPressed: () {
    print("Cancel clicked");
  },
  child: Text("CANCEL"),
)
```

---

# 📝 4. TextButton

`TextButton` comparatively simple/text-based button hota hai.

Ye actions jaise:

* View Details
* Learn More
* Skip
* See More

ke liye useful ho sakta hai.

### Syntax

```dart
TextButton(
  onPressed: () {
    // action
  },
  child: Text("View Details"),
)
```

---

# ❤️ 5. IconButton

`IconButton` icon ko clickable banata hai.

Examples:

* Favorite
* Delete
* Settings
* Search
* Menu

### Syntax

```dart
IconButton(
  onPressed: () {
    // action
  },
  icon: Icon(Icons.favorite),
)
```

---

# ⚡ 6. onPressed

`onPressed` button ka callback hai.

Jab user button press karta hai, `onPressed` ke andar diya gaya function execute hota hai.

### Example

```dart
ElevatedButton(
  onPressed: () {
    print("Button Pressed");
  },
  child: Text("Click Me"),
)
```

Mental Model:

```text
User taps button
       ↓
onPressed callback
       ↓
Action execute
```

---

# 🎨 7. Button Styling

Flutter mein button ka appearance customize kiya ja sakta hai.

Day 07 mein humne `styleFrom()` ka use kiya.

### Example

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),
  onPressed: () {},
  child: Text("PLAY"),
)
```

---

# 🛠️ 8. styleFrom()

`styleFrom()` button ki styling ko easily customize karne ke liye use kiya gaya.

### Example

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),
  onPressed: () {},
  child: Text("PLAY"),
)
```

---

# 🎨 9. backgroundColor

`backgroundColor` button ka background color set karta hai.

```dart
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.green,
)
```

---

# 🎨 10. foregroundColor

`foregroundColor` button ke foreground elements ka color control karta hai.

Example:

```dart
style: ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
)
```

---

# 🖌️ 11. BorderSide

`BorderSide` ka use button ke border ko customize karne ke liye kiya ja sakta hai.

Example:

```dart
style: OutlinedButton.styleFrom(
  side: BorderSide(
    color: Colors.white,
  ),
)
```

---

# 🔵 12. Button Shapes

Buttons ke shape ko bhi customize kiya ja sakta hai.

Example:

```dart
style: ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
)
```

Isse button ke corners rounded ho jaate hain.

---

# 🖼️ 13. Image.network()

`Image.network()` internet se image load karne ke liye use hota hai.

### Syntax

```dart
Image.network(
  "IMAGE_URL",
)
```

### Example

```dart
Image.network(
  "https://example.com/image.jpg",
)
```

---

# 📏 14. Image Width & Height

Image ka size `width` aur `height` se control kar sakte hain.

```dart
Image.network(
  "https://example.com/image.jpg",
  width: 200,
  height: 200,
)
```

---

# 🖼️ 15. BoxFit.cover

`BoxFit.cover` image ko given area ko cover karne ke liye use karta hai.

```dart
Image.network(
  "https://example.com/image.jpg",
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)
```

Mental Model:

```text
Image
  ↓
Fixed width + height
  ↓
BoxFit.cover
  ↓
Available area ko cover karne ki koshish
```

---

# 🧩 16. Day 07 Widget Tree

Day 07 mein banaye gaye Music Player UI ka basic widget structure:

```text
Scaffold
├── AppBar
└── Body
    └── Center
        └── Column
            ├── Image.network
            ├── Row
            │   ├── ElevatedButton
            │   └── OutlinedButton
            ├── TextButton
            └── IconButton
```

---

# 🎵 17. Practice Project — Music Player UI

Day 07 mein humne ek Music Player UI create kiya.

Isme:

* AppBar
* Dark background
* Network image
* PLAY → `ElevatedButton`
* CANCEL → `OutlinedButton`
* View Details → `TextButton`
* Favorite → `IconButton`

use kiya gaya.

Is project ka main purpose buttons aur network images ko ek relatable UI mein practice karna tha.

---

# 🧠 Quick Mental Model

```text
ElevatedButton
→ Filled / elevated action

OutlinedButton
→ Border wala action

TextButton
→ Simple text action

IconButton
→ Icon-based action

onPressed
→ Click hone par action

styleFrom()
→ Button styling

Image.network()
→ Internet se image

BoxFit.cover
→ Image ko available area cover karwana
```

---

# 🐛 Common Mistakes

### 1. `onPressed` bhool jaana

Button ko callback chahiye.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text("PLAY"),
)
```

### 2. `child` bhool jaana

Button ke andar visible content dena hota hai.

```dart
child: Text("PLAY")
```

### 3. `Image.network()` mein invalid URL

Network image ke liye valid image URL required hota hai.

### 4. Image ka size control na karna

Agar required ho to:

```dart
width: 200,
height: 200,
```

use kiya ja sakta hai.

### 5. `BoxFit.cover` ka purpose confuse karna

`BoxFit.cover` image ko available area cover karne mein help karta hai.

---

# 🔑 Key Takeaways

* Flutter mein multiple types ke buttons available hain.
* `onPressed` button interaction ka important part hai.
* `styleFrom()` se button appearance customize kar sakte hain.
* `backgroundColor` background ko control karta hai.
* `foregroundColor` foreground color ko control karta hai.
* `BorderSide` border customize kar sakta hai.
* Button shape ko customize kiya ja sakta hai.
* `Image.network()` internet se image load karta hai.
* `width` aur `height` image ka size control karte hain.
* `BoxFit.cover` image ko available area cover karne mein help karta hai.
* Concepts ko ek practical Music Player UI mein combine kiya gaya.

---

# 📌 Day 07 Status

```text
Day: 07
Status: ✅ Completed

Main Topics:
✅ ElevatedButton
✅ OutlinedButton
✅ TextButton
✅ IconButton
✅ onPressed
✅ Button Styling
✅ styleFrom()
✅ backgroundColor
✅ foregroundColor
✅ BorderSide
✅ Button Shapes
✅ Image.network()
✅ Image width
✅ Image height
✅ BoxFit.cover

Practice:
🎵 Music Player UI
```

---

# 🚀 Next

Next logical topic:

```text
Day 08
↓
Image Styling
↓
ClipRRect
↓
Image + Container
↓
Local Assets
↓
Image.asset()
```