# Coastal grandmother theme

Coastal grandmother is a relaxed style of linen, beach houses, and
seaside cooking. Coastal grandmother was a 2022 trend with a "beachy,
romantic aesthetic" tied to the rural American East Coast. It grew out
of "retirement wear," where young Gen Z and millennial women borrowed
the comfortable style of their elders. Both trends came from
comfortcore, the turn to comfortable clothes that followed the COVID-19
lockdowns.

## Usage

``` r
theme_coastal(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Baskerville", "Baskerville.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Baskerville when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows a linen beach house: sea blue, navy, sand,
hydrangea, seagrass, and driftwood (the article has no palette, so the
Cape Cod postcard leads).

## See also

[2020s in fashion](https://en.wikipedia.org/wiki/2020s_in_fashion) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Coastal grandmother") +
  theme_coastal(base_family = "sans", title_family = "sans")
```
