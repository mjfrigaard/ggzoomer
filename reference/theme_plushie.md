# Plushie theme

Plushies (stuffed toys) are collected, displayed, and carried well past
childhood. Gen Z treats plushies as comfort objects tied to mental
wellness, and as collectibles like Beanie Babies once were. TikTok
hashtags for Squishmallows have passed a billion views. Jellycat's
revenue reached about \$252 million in 2022 to 2023 as adult buyers
joined in. Critics read the trend as nostalgic stress relief or delayed
adulthood.

## Usage

``` r
theme_plushie(
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

The palette follows pastel Squishmallows and Jellycat plush: pastel
pink, lavender, baby blue, mint, butter yellow, and avocado green.

## See also

[Stuffed toy](https://en.wikipedia.org/wiki/Stuffed_toy) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Plushie") +
  theme_plushie(base_family = "sans", title_family = "sans")
```
