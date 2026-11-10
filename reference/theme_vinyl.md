# Vinyl theme

Vinyl records outsell CDs again, thanks to collectors who buy albums in
colored variants. The palette follows the article's "black disc", Red
Seal labels, transparent red vinylite, the Blue Goose label, gold label
foil, and paper sleeves.

## Usage

``` r
theme_vinyl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Cochin", "Cochin.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Cochin when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Phonograph record](https://en.wikipedia.org/wiki/Phonograph_record) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Vinyl") +
  theme_vinyl(base_family = "sans", title_family = "sans")
```
