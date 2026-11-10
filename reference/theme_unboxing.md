# Unboxing theme

Unboxing videos film someone opening a new product, from phones to
sneakers. Unboxing videos show someone opening a new product on camera.
The first one, for a Nokia phone, appeared in 2006. The format soon
spread to almost every kind of product. By 2014, companies were sending
free products to creators. Fans say the videos give an honest look at a
product without manipulative ads.

## Usage

``` r
theme_unboxing(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Rockwell", "Rockwell.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Rockwell when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's boxes as "marketing billboards": kraft
cardboard, packing tape, black print, tissue paper pink, brand blue, and
a sticker green.

## See also

[Unboxing](https://en.wikipedia.org/wiki/Unboxing) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Unboxing") +
  theme_unboxing(base_family = "sans", title_family = "sans")
```
