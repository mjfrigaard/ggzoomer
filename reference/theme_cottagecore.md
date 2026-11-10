# Cottagecore theme

Cottagecore is an internet aesthetic that romanticizes rural life:
gardens, baking, and handmade things. The palette follows the article's
muted palettes, floral prints, calico, worn leather, and indoor
greenery: sage, rose, leather brown, calico blue, butter yellow, and
moss.

## Usage

``` r
theme_cottagecore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Bradley Hand", "Bradley Hand Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Bradley Hand when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Cottagecore](https://en.wikipedia.org/wiki/Cottagecore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Cottagecore") +
  theme_cottagecore(base_family = "sans", title_family = "sans")
```
