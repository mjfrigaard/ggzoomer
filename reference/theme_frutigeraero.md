# Frutiger Aero theme

Frutiger Aero is the glossy design style of the mid 2000s: bubbles,
water, grass, and blue skies. The palette follows the article's blue
skies, grass, aurorae, and bright colors ("yellows, and particularly
blues and greens").

## Usage

``` r
theme_frutigeraero(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Skia", "Skia.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Skia when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Frutiger Aero](https://en.wikipedia.org/wiki/Frutiger_Aero) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Frutiger Aero") +
  theme_frutigeraero(base_family = "sans", title_family = "sans")
```
