# Mushroom lamp theme

Mushroom lamps are glowing nightlights that became a bedroom decor
trend. The palette follows the article's nightlight sources
(incandescent amber, neon orange, and soft electroluminescent green and
blue) plus a red spotted mushroom cap.

## Usage

``` r
theme_mushroomlamp(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Trattatello", "Trattatello.ttf"),
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

  Title font family. Defaults to Trattatello when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Nightlight](https://en.wikipedia.org/wiki/Nightlight) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Mushroom lamp") +
  theme_mushroomlamp(base_family = "sans", title_family = "sans")
```
