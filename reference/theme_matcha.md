# Matcha theme

Matcha is finely ground Japanese green tea, now a cafe staple as a
latte. Matcha is a finely ground green tea from Japan. Demand for it
grew so much in this century that China started mass producing it in
2018. Matcha has also spread to North American cafes like Starbucks.
There, it shows up in lattes, iced drinks, and smoothies.

## Usage

``` r
theme_matcha(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Gill Sans", "GillSans.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Gill Sans when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's vivid green color, matcha lattes, soba
noodles, and wagashi: ceremonial green, bright green, latte foam,
buckwheat, red bean, and tea leaf.

## See also

[Matcha](https://en.wikipedia.org/wiki/Matcha) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Matcha") +
  theme_matcha(base_family = "sans", title_family = "sans")
```
