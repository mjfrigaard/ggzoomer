# Dark academia theme

Dark academia is an internet aesthetic built around old libraries,
tweed, and classic literature. Dark academia spread through Tumblr and
TikTok. Tumblr's 2021 year in review ranked it the platform's second
most popular aesthetic, and about 48% of Tumblr users are Gen Z.
Commentators link its appeal to digital fatigue and a hunger for
reflection and an intellectual identity. Critics point out that it has
since been sold back as a lifestyle brand.

## Usage

``` r
theme_darkacademia(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Big Caslon", "BigCaslon.ttf"),
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

  Title font family. Defaults to Big Caslon when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows a dim library with black coffee: parchment, brown
tweed, burgundy, forest green, charcoal, and dark oak.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Dark academia](https://en.wikipedia.org/wiki/Dark_academia) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Dark academia") +
  theme_darkacademia(base_family = "sans", title_family = "sans")
```
