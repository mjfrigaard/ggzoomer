# Thrift theme

Thrifting (shopping at charity and secondhand shops) is the budget and
planet friendly way to build a wardrobe. The palette follows the
article's Red Cross and Oxfam shops and vintage clothing: charity red,
mustard, faded denim, corduroy brown, Oxfam green, and dusty rose.

## Usage

``` r
theme_thrift(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("SignPainter", "SignPainter.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to SignPainter when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Charity shop](https://en.wikipedia.org/wiki/Charity_shop) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Thrift") +
  theme_thrift(base_family = "sans", title_family = "sans")
```
