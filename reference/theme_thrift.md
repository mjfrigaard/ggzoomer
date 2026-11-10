# Thrift theme

Thrifting (shopping at charity and secondhand shops) is the budget and
planet friendly way to build a wardrobe. Gen Z turned thrifting into a
lifestyle and a status symbol. ThredUp data cited by Goodwill shows 83%
of Gen Z Americans shop secondhand or would. Their reasons include
sustainability, individuality, and money, since many grew up during the
2007 to 2009 recession. TikTok thrift hauls during the pandemic pushed
the trend further.

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

## Details

The palette follows racks of secondhand finds: faded denim, worn
leather, mustard, rust, olive, and mint on lace cream.

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
