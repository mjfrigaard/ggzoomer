# Tumbler theme

Insulated tumblers and water bottles (vacuum flasks) became a status
accessory in the 2020s. An insulated tumbler is a vacuum flask built as
a cup. A vacuum between two walls slows heat transfer, so drinks stay
hot or cold for hours. With cold drinks, it also stops the outside of
the cup from sweating. The idea is old enough that "thermos" became a
generic word in the United States in 1963.

## Usage

``` r
theme_tumbler(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Copperplate", "Copperplate.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Copperplate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's stainless vacuum flask, in the powder
coated colors of today's tumblers (cream, sage, rose, and cobalt) and
the classic red Thermos.

## See also

[Vacuum flask](https://en.wikipedia.org/wiki/Vacuum_flask) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Tumbler") +
  theme_tumbler(base_family = "sans", title_family = "sans")
```
