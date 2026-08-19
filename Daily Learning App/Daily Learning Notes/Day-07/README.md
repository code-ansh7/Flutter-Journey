# 🎵 Flutter Day 07 — Buttons + Images

## 📌 Overview

Day 07 focused on practicing **Flutter buttons, button styling, callbacks, and network images** through a practical Music Player UI.

The goal was not just to use buttons, but to understand how different button widgets behave and how their appearance can be customized.

---

## 🎯 Learning Goals

By completing Day 07, I practiced:

* `ElevatedButton`
* `OutlinedButton`
* `TextButton`
* `IconButton`
* `onPressed`
* Button styling
* `styleFrom()`
* `backgroundColor`
* `foregroundColor`
* `BorderSide`
* Button shapes
* `Image.network()`
* Image `width`
* Image `height`
* `BoxFit.cover`

---

## 🧠 Concepts Learned

### 1. ElevatedButton

Used for a primary action.

```dart
ElevatedButton(
  onPressed: () {
    print("Play button pressed");
  },
  child: Text("PLAY"),
)
```

In the Music Player UI, it was used for the **PLAY** action.

---

### 2. OutlinedButton

Used for a secondary action with an outline.

```dart
OutlinedButton(
  onPressed: () {
    print("Cancel Button Pressed");
  },
  child: Text("CANCEL"),
)
```

In the UI, it was used for the **CANCEL** action.

---

### 3. TextButton

Used for a lightweight text-based action.

```dart
TextButton(
  onPressed: () {
    print("View Details Pressed");
  },
  child: Text("View Details"),
)
```

It was used for the **View Details** action.

---

### 4. IconButton

Used when the action can be represented by an icon.

```dart
IconButton(
  onPressed: () {
    print("Favorite pressed");
  },
  icon: Icon(Icons.favorite_border),
)
```

It was used for the **Favorite** action.

---

## 🎨 Button Styling

Flutter allows buttons to be customized using `styleFrom()`.

### ElevatedButton

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.cyanAccent,
    foregroundColor: Colors.black,
  ),
  onPressed: () {},
  child: Text("PLAY"),
)
```

### Important Properties

#### `backgroundColor`

Controls the button's background color.

#### `foregroundColor`

Controls the foreground color, such as text and icons.

---

## 🖌️ OutlinedButton Border

An `OutlinedButton` can have a custom border.

```dart
OutlinedButton(
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.cyanAccent,
    side: BorderSide(
      color: Colors.cyanAccent,
      width: 2,
    ),
  ),
  onPressed: () {},
  child: Text("CANCEL"),
)
```

### `BorderSide`

Controls:

* Border color
* Border width

---

## 🖼️ Network Images

Flutter can display an image from a URL using:

```dart
Image.network(
  "https://example.com/image.jpg",
)
```

### Image Size

```dart
Image.network(
  "https://example.com/image.jpg",
  width: 250,
  height: 180,
)
```

### `BoxFit.cover`

```dart
Image.network(
  "https://example.com/image.jpg",
  width: 250,
  height: 180,
  fit: BoxFit.cover,
)
```

`BoxFit.cover` makes the image cover the available width and height while maintaining its aspect ratio. Parts of the image may be cropped.

---

## 🧩 Widget Tree Practiced

The Music Player UI followed approximately this structure:

```text
Scaffold
├── AppBar
└── Body
    └── Center
        └── Column
            ├── Image.network
            ├── SizedBox
            ├── Row
            │   ├── ElevatedButton
            │   └── OutlinedButton
            ├── TextButton
            └── IconButton
```

This helped practice combining multiple widgets to create a practical screen.

---

## 🎵 Music Player UI

The completed practice screen contained:

* Spotify-style AppBar
* Dark background
* Network music image
* PLAY button
* CANCEL button
* View Details button
* Favorite IconButton

---

## 🧠 Mental Model

Different buttons are useful for different levels of importance:

```text
Primary Action
    ↓
ElevatedButton

Secondary Action
    ↓
OutlinedButton

Simple/Text Action
    ↓
TextButton

Icon-based Action
    ↓
IconButton
```

---

## 💡 Button Callback Mental Model

The `onPressed` property defines what should happen when the user presses the button.

```dart
onPressed: () {
  print("Button pressed");
}
```

Think:

```text
User taps button
       ↓
onPressed executes
       ↓
Action happens
```

---

## 🧪 Practice Completed

### Music Player Screen

The screen practiced:

```text
Image
  ↓
PLAY + CANCEL
  ↓
View Details
  ↓
Favorite
```

The buttons were connected with simple `print()` callbacks to verify that the actions were triggered.

---

## ⚠️ Common Mistakes

### 1. Forgetting `onPressed`

Buttons need an action callback when they are intended to be interactive.

```dart
onPressed: () {
  print("Pressed");
}
```

---

### 2. Confusing `backgroundColor` and `foregroundColor`

```text
backgroundColor → background
foregroundColor → text/icon foreground
```

---

### 3. Using `color` unnecessarily on IconButton

When using:

```dart
IconButton.styleFrom(
  foregroundColor: Colors.black,
)
```

the icon can inherit the foreground color.

So this is usually unnecessary:

```dart
Icon(
  Icons.favorite_border,
  color: Colors.black,
)
```

when the `IconButton` already controls the foreground color.

---

### 4. Image URL Problems

`Image.network()` depends on a valid, accessible image URL.

If the URL does not work, the image may fail to load.

---

## 🔑 Key Takeaways

* `ElevatedButton` is suitable for primary actions.
* `OutlinedButton` is useful for outlined secondary actions.
* `TextButton` is useful for lightweight text actions.
* `IconButton` is useful for icon-based actions.
* `onPressed` handles button interaction.
* `styleFrom()` helps customize button appearance.
* `backgroundColor` controls the background.
* `foregroundColor` controls text/icon color.
* `BorderSide` customizes borders.
* `Image.network()` loads images from URLs.
* `width` and `height` control image dimensions.
* `BoxFit.cover` fills the available area and may crop the image.
* Widgets can be combined to create practical real-world screens.

---

## 📊 Day 07 Status

```text
Day: 07
Status: ✅ Completed

Main Topics:
✅ Buttons
✅ Button callbacks
✅ Button styling
✅ Network images
✅ Image sizing
✅ BoxFit.cover

Practice Project:
🎵 Music Player UI
```

---

## 🔮 Next

### Flutter Day 08

Next we continue with:

```text
Images
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

Day 08 will be started only when the actual lesson begins.