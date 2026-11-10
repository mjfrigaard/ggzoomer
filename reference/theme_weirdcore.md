# Weirdcore theme

Weirdcore is an internet aesthetic of low quality images, liminal
spaces, and unsettling captions. The palette follows the article's out
of place red text and black rectangle voids, over low quality photos of
sky, grass, and sepia nostalgia.

## Usage

``` r
theme_weirdcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Times New Roman", "Times New Roman Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Times New Roman when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Weirdcore](https://en.wikipedia.org/wiki/Weirdcore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Weirdcore") +
  theme_weirdcore(base_family = "sans", title_family = "sans")
```
