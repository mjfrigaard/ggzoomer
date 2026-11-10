# Goblincore theme

Goblincore celebrates the less pretty side of nature: moss, mushrooms,
snails, and found objects. Goblincore is a grungier, moodier cousin of
cottagecore. It grew on TikTok in 2021 and ties into Gen Z's interest in
nature and sustainability. The trend pulls people away from screens and
into forests and empty lots. Coverage reads its anti consumerist
attitude and love of imperfection as a response to an unsettling, post
pandemic world.

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

The palette follows mud, moss, and fungi in natural earth tones: moss
green, toadstool red, mushroom beige, lichen sage, mud brown, and olive
on soil black.

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
