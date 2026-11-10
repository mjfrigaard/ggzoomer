# RGB setup theme

An RGB setup is a gaming PC and desk lit up in color changing lights.
The palette follows the article's gaming PCs lit in RGB: cyan, purple,
red, lime, and blue case lighting with a white glow.

## Usage

``` r
theme_rgbsetup(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf"),
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

  Title font family. Defaults to Arial Narrow when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Gaming computer](https://en.wikipedia.org/wiki/Gaming_computer) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "RGB setup") +
  theme_rgbsetup(base_family = "sans", title_family = "sans")
```
