# Clean girl theme

The clean girl aesthetic is a minimal beauty and wellness trend built on
slicked back hair, a no makeup makeup look, and a limited palette. The
clean girl aesthetic became a viral TikTok and Instagram trend in 2021
and 2022. It moved beauty away from the heavy full glam of the late
2010s and toward a curated, wellness focused identity. Critics say the
effortless look takes expensive upkeep and borrows styles from Black and
Latina women. By 2025, much of Gen Z had moved on to messier, more
maximalist looks.

## Usage

``` r
theme_cleangirl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Didot", "Didot.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Didot when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the polished, no makeup look: delicate gold jewelry,
an iced matcha latte, fluffy brown brows, glazed dewy skin, tinted
gloss, and neutral toned clothing.

## See also

[Clean girl
aesthetic](https://en.wikipedia.org/wiki/Clean_girl_aesthetic) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Clean girl") +
  theme_cleangirl(base_family = "sans", title_family = "sans")
```
