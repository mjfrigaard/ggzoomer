# Coastal grandmother theme

Coastal grandmother is a relaxed style of linen, beach houses, and
seaside cooking. The coastal grandmother look borrows from the heroines
of Nancy Meyers films like Something's Gotta Give. Gen Z and millennials
treat it as an escape from stress and burnout, a life of leisure instead
of constant striving. Gen Z makes it more accessible with texture and
vintage pieces; no beach house required. A younger, more casual version
is called coastal granddaughter.

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

The palette follows the Nancy Meyers wardrobe: soft blue, navy, beige
linen, camel cashmere, driftwood gray, and sea glass green on cream.

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
