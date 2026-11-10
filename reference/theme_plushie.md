# Plushie theme

Plushies (stuffed toys) are collected, displayed, and carried well past
childhood. The palette follows the article's soft toys in "a wide
variety of colors" and fur textures: teddy honey, bunny pink, frog
green, sky blue, lavender, and button eye brown.

## Usage

``` r
theme_plushie(
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

## See also

[Stuffed toy](https://en.wikipedia.org/wiki/Stuffed_toy) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Plushie") +
  theme_plushie(base_family = "sans", title_family = "sans")
```
