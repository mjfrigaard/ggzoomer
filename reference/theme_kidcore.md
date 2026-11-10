# Kidcore theme

Kidcore is a bright, nostalgic aesthetic of primary colors, beads,
stickers, and childhood toys. Kidcore runs on nostalgia for a 1990s and
early 2000s childhood: primary colors, toys, cartoons, and the
playground. The trend took off in late 2020. Nylon reported a 2,439%
jump in Etsy searches for the word in the three months ending September
2020. One behavioral scientist linked it to the stress of the pandemic:
"people want to escape into childhood."

## Usage

``` r
theme_kidcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Comic Sans MS", "Comic Sans MS Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Comic Sans MS when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's bright primary colors and rainbow
colours.

## See also

[Kidcore](https://en.wikipedia.org/wiki/Kidcore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Kidcore") +
  theme_kidcore(base_family = "sans", title_family = "sans")
```
