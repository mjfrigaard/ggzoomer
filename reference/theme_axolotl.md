# Axolotl theme

Axolotls are Mexican salamanders that keep their gills for life and
became an internet favorite (and a game mob). The axolotl is a
salamander that keeps its pink and white coloring, large eyes, and
feathery gills into adulthood. Online, it stands for cuteness, aquatic
pets, and staying young. Custom axolotl emojis often hold boba tea or
hearts, or wear tiny hats. In 2017, it became the official emoji of
Mexico City.

## Usage

``` r
theme_axolotl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the axolotl emoji: pink and white skin, deep pink
feathery gills, big black eyes, and the boba tea, hearts, and aquarium
water it often comes with.

## See also

[Axolotl](https://en.wikipedia.org/wiki/Axolotl) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Axolotl") +
  theme_axolotl(base_family = "sans", title_family = "sans")
```
