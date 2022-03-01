ColorFilter generator and presets to use with ColorFiltered widget.

## Installation

First, add `colorfilter_generator:` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).
  

Presets included:   AddictiveBlue, AddictiveRed, Aden, Amaro, Ashby, Brannan, Brooklyn, Charmes, Clarendon, Crema, Dogpatch, Earlybird, F1977, Gingham, Ginza, Hefe, Helena, Hudson, Inkwell, Juno, Kelvin, Lark, LoFi, Ludwig, Maven, Mayfair, Moon, Nashville, Perpetua, Reyes, Rise, Sierra, Skyline, Slumber, Stinson, Sutro, Toaster, Valencia, Vesper, Walden, Willow, XProII
  
  
## Usage  
  
```dart
ColorFiltered(
  colorFilter: ColorFilter.matrix(
    ColorFilterAddons.brightness(0.4),
  ),
  child: Image.network('https://example.com/path/to/image.png'),
)
```

## Custom Filter  
  
```dart
ColorFilterGenerator myFilter = ColorFilterGenerator(
  name: "CustomFilter",
  filters: [
    ColorFilterAddons.brightness(.1),
    ColorFilterAddons.contrast(.1),
    ColorFilterAddons.saturation(.15),
    PresetFilters.ludwig,
    PresetFilters.ludwig.opacity(0.20),
  ]
);

// Usage
ColorFiltered(
  colorFilter: ColorFilter.matrix(myFilter.matrix),
  child: Image.network('https://example.com/path/to/image.png'),
)
```