# Goblincore theme

Goblincore celebrates the less pretty side of nature: moss, mushrooms,
snails, and found objects. The palette follows the article's brown,
green, and clashing colors: moss, mushroom caps, earthworms, bones,
rocks, and soil.

## Usage

``` r
theme_goblincore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Luminari", "Luminari.ttf"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Luminari when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Goblincore](https://en.wikipedia.org/wiki/Goblincore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Goblincore") +
  theme_goblincore(base_family = "sans", title_family = "sans")
```
