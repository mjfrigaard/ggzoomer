# Synthwave theme

Synthwave is electronic music (and art) that looks back at 1980s film
scores: neon grids and chrome sunsets. The palette follows the article's
outrun look: magenta neon, gridlines, and a 1980s sunset in pink,
orange, and yellow, with violet and chrome blue.

## Usage

``` r
theme_synthwave(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Futura", "Futura.ttc"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Futura when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Synthwave](https://en.wikipedia.org/wiki/Synthwave) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Synthwave") +
  theme_synthwave(base_family = "sans", title_family = "sans")
```
