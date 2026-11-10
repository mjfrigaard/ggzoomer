# Indie sleaze theme

Indie sleaze is the messy, flash photo party style of 2006 to 2012, now
back on social media. The palette follows the article's flash
photography, bleached hair, shredded denim, galaxy and "Aztec" prints,
and smudged eyeliner on a dark club floor.

## Usage

``` r
theme_indiesleaze(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Impact", "Impact.ttf"),
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

  Title font family. Defaults to Impact when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Indie sleaze](https://en.wikipedia.org/wiki/Indie_sleaze) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Indie sleaze") +
  theme_indiesleaze(base_family = "sans", title_family = "sans")
```
