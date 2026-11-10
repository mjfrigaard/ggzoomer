# ASMR theme

ASMR (autonomous sensory meridian response) is the tingling some people
feel while watching whisper, tapping, and crinkle videos. The palette
follows the article's soft triggers (whispers, light touch, brushing) as
calm blues, lilac, blush, and mint, with the deep blue of its tingle
map.

## Usage

``` r
theme_asmr(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Optima", "Optima.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Optima when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[ASMR](https://en.wikipedia.org/wiki/ASMR) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "ASMR") +
  theme_asmr(base_family = "sans", title_family = "sans")
```
