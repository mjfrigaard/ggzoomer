# Coastal grandmother theme

Coastal grandmother is a relaxed style of linen, beach houses, and
seaside cooking. The palette follows a linen beach house: sea blue,
navy, sand, hydrangea, seagrass, and driftwood (the article has no
palette, so the Cape Cod postcard leads).

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

## See also

[Coastal grandmother](https://en.wikipedia.org/wiki/Coastal_grandmother)
on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Coastal grandmother") +
  theme_coastal(base_family = "sans", title_family = "sans")
```
