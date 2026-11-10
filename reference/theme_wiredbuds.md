# Wired earbuds theme

Wired earbuds made a comeback as a style statement and a break from
charging. Earbuds sit in the ear canal and connect to a phone with a
cord or, in newer models, with Bluetooth. Headphones went public in the
1980s with the Walkman. That was when people started wearing them on
sidewalks, in grocery stores, and on public transit.

## Usage

``` r
theme_wiredbuds(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marker Felt", "MarkerFelt.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Marker Felt when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the Headphones article's rubber, gold contacts, and
wire, plus the red right channel marker, the wood table, and navy.

## See also

[Headphones](https://en.wikipedia.org/wiki/Headphones) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Wired earbuds") +
  theme_wiredbuds(base_family = "sans", title_family = "sans")
```
