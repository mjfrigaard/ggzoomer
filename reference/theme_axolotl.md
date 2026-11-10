# Axolotl theme

Axolotls are Mexican salamanders that keep their gills for life and
became an internet favorite (and a game mob). The axolotl is a
salamander that keeps its feathery gills as an adult. It is a popular
subject in modern culture, and in 2017 it became the official emoji of
Mexico City. Mexico put an axolotl on its 50 peso banknote in 2021. So
many people kept the note that up to 50 million were out of circulation
by 2025. In the wild, the species is critically endangered.

## Usage

``` r
theme_axolotl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's color variants: the wild type's brown
with gold speckles and an olive undertone, the leucistic pink, pink
gills, and the dark melanoid.

## See also

[Axolotl](https://en.wikipedia.org/wiki/Axolotl) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Axolotl") +
  theme_axolotl(base_family = "sans", title_family = "sans")
```
