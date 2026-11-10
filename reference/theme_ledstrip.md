# LED strip theme

LED strip lights are the adhesive color changing lights that line
bedroom ceilings and desks. The palette follows the article's strip
types: red, green, and blue multicolor LEDs, warm and cool white color
temperatures, and a 2200K amber.

## Usage

``` r
theme_ledstrip(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Silom", "Silom.ttf"),
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

  Title font family. Defaults to Silom when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[LED strip light](https://en.wikipedia.org/wiki/LED_strip_light) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "LED strip") +
  theme_ledstrip(base_family = "sans", title_family = "sans")
```
