# Matcha theme

Matcha is finely ground Japanese green tea, now a cafe staple as a
latte. In 2025, BeverageDaily called matcha Gen Z's avocado toast
moment. Its photogenic green suits Instagram and TikTok, where a new
flavor or cup design can go viral fast. Gen Z also picks matcha for its
perceived health benefits, dairy free options, and lower caffeine than
coffee. The whisking ritual signals that you're in the know.

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

The palette follows a matcha latte layered over oat milk: ceremonial
green, bamboo whisk tan, deep tea leaf, matcha mochi, bright latte
green, and a dark wood counter.

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
