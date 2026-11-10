# Goblincore theme

Goblincore celebrates the less pretty side of nature: moss, mushrooms,
snails, and found objects. Goblincore celebrates the parts of nature
most people overlook, such as soil, small animals, and second-hand
objects. It surfaced on Tumblr and TikTok in the late 2010s and "hit
full steam in 2020" during the pandemic. The goblincore subreddit grew
395% in the year to July 2021. That June, Etsy reported a 695% jump in
goblincore searches.

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

The palette follows the article's brown, green, and clashing colors:
moss, mushroom caps, earthworms, bones, rocks, and soil.

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
