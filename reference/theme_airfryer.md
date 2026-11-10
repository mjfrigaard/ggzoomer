# Air fryer theme

Air fryers are small countertop convection ovens that blow hot air
around food. The palette follows the article's fan forced hot air and
browned food: golden fries, crispy brown, heating element orange,
brushed steel, matte black, and herbs.

## Usage

``` r
theme_airfryer(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Tahoma", "Tahoma Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Tahoma when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Convection oven](https://en.wikipedia.org/wiki/Convection_oven) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Air fryer") +
  theme_airfryer(base_family = "sans", title_family = "sans")
```
