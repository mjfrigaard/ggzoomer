# Gorpcore theme

Gorpcore is hiking gear (shell jackets, fleece, and trail shoes) worn as
everyday streetwear. The palette follows the article's two color
schemes, earthy or bright and bold: safety orange, glacier blue, forest
green, khaki, lime, and charcoal shell jackets.

## Usage

``` r
theme_gorpcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to DIN Condensed when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Gorpcore](https://en.wikipedia.org/wiki/Gorpcore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Gorpcore") +
  theme_gorpcore(base_family = "sans", title_family = "sans")
```
