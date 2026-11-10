# Dark academia theme

Dark academia is an internet aesthetic built around old libraries,
tweed, and classic literature. The palette follows the article's palette
of black, white, beige, browns, dark green, and occasionally navy blue,
with candlelight gold and dark wood.

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
