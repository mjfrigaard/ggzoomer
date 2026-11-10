# Boba theme

Bubble tea (boba) is a Taiwanese tea drink with chewy tapioca pearls.
The palette follows the article's drinks and toppings: tapioca pearls,
pearl black milk tea, pearl green milk tea, red bean, brown sugar syrup,
and taro.

## Usage

``` r
theme_boba(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Chalkboard", "Chalkboard.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Chalkboard when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Bubble tea](https://en.wikipedia.org/wiki/Bubble_tea) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Boba") +
  theme_boba(base_family = "sans", title_family = "sans")
```
