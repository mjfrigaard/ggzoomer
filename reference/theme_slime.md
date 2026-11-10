# Slime theme

Slime is the stretchy toy that kids make at home and watch in satisfying
videos. Slime started as a Mattel toy in 1976, sold in a tiny plastic
trash can. It later spread to Ghostbusters, Teenage Mutant Ninja
Turtles, and Nickelodeon, where it soaks winners at the Kids' Choice
Awards. In 2025, slime joined the National Toy Hall of Fame.

## Usage

``` r
theme_slime(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Noteworthy", "Noteworthy.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Noteworthy when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's oozy green slime, the other colors
from food coloring, and its plastic trash can.

## See also

[Slime (toy)](https://en.wikipedia.org/wiki/Slime_(toy)) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Slime") +
  theme_slime(base_family = "sans", title_family = "sans")
```
