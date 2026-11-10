# Lightstick theme

Lightsticks are the glow sticks fans wave at concerts, now synced to the
show at K-pop tours. The palette follows the article's chemiluminescent
glow in a translucent plastic tube: green, pink, blue, yellow, orange,
and purple on a black arena.

## Usage

``` r
theme_lightstick(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Black", "Arial Black.ttf"),
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

  Title font family. Defaults to Arial Black when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Glow stick](https://en.wikipedia.org/wiki/Glow_stick) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Lightstick") +
  theme_lightstick(base_family = "sans", title_family = "sans")
```
