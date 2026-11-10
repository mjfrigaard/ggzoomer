# Fidget toy theme

Fidget toys (spinners, cubes, pop its, and bike chains) are small things
to keep your hands busy. The palette follows the article's fidget
spinners, Fidget Cubes, and Pop Its: saturated silicone colors and a
chrome bearing gray.

## Usage

``` r
theme_fidget(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkduster", "Chalkduster.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkduster when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Fidget toy](https://en.wikipedia.org/wiki/Fidget_toy) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Fidget toy") +
  theme_fidget(base_family = "sans", title_family = "sans")
```
