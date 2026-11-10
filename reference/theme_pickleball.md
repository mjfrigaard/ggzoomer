# Pickleball theme

Pickleball is a paddle sport played with a plastic ball over a low net,
and the fastest growing sport in the US. The palette follows the
article's plastic ball, paddles, net, and court: optic yellow, court
blue and green, red paddle, black net, and an orange ball.

## Usage

``` r
theme_pickleball(
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

[Pickleball](https://en.wikipedia.org/wiki/Pickleball) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Pickleball") +
  theme_pickleball(base_family = "sans", title_family = "sans")
```
