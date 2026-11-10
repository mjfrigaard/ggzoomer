# Weirdcore theme

Weirdcore is an internet aesthetic of low quality images, liminal
spaces, and unsettling captions. Weirdcore is an internet aesthetic from
the early 2020s. It uses liminal spaces, low quality photos, and strange
messages to mix nostalgia with unease. Its look borrows from images
shared on an older internet. The director of the 2022 horror film
Skinamarink studied online communities like r/Weirdcore while making it.

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

## Details

The palette follows the article's out of place red text and black
rectangle voids, over low quality photos of sky, grass, and sepia
nostalgia.

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
