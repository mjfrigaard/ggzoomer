# Boba theme

Bubble tea (boba) is a Taiwanese tea drink with chewy tapioca pearls.
Boba is known for its vibrant, layered colors, cups slick with
condensation, and swirling tapioca pearls or colorful popping boba. That
look makes it one of the most Instagrammable drinks around. For Gen Z, a
photo of a boba cup works as a kind of visual currency.

## Usage

``` r
theme_boba(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkboard", "Chalkboard.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkboard when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the vibrant, layered drinks: black tapioca pearls,
milk tea, taro, strawberry, matcha, and mango popping boba.

## See also

[Bubble tea](https://en.wikipedia.org/wiki/Bubble_tea) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Boba") +
  theme_boba(base_family = "sans", title_family = "sans")
```
