# Doomscroll theme

Doomscrolling is spending far too long scrolling through upsetting or
endless feeds. Doomscrolling means spending too much time scrolling
through bad news. The word first appeared in a tweet in 2018 and spread
during the COVID-19 pandemic. Research finds it is more common in
younger age groups. The Macquarie Dictionary named it a 2020 word of the
year, and Merriam-Webster added it in September 2023.

## Usage

``` r
theme_doomscroll(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Verdana", "Verdana Bold.ttf"),
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

  Title font family. Defaults to Verdana when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's late night feeds of negative news:
screen glow blue, alert red, headline gray, notification orange, purple,
and cyan on a dark room.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Doomscrolling](https://en.wikipedia.org/wiki/Doomscrolling) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Doomscroll") +
  theme_doomscroll(base_family = "sans", title_family = "sans")
```
