# Coquette theme

The coquette aesthetic is a 2020s fashion trend of bows, lace, ribbons,
and pastels. Coquette is a 2020s Gen Z trend that reclaims hyper
femininity as self expression. Unlike the girlboss era, it treats
softness as strength. On TikTok, \#coquetteaesthetic has passed 18
billion views, and Lana Del Rey, Sabrina Carpenter, and Jennie have all
embraced the look. Critics call it regressive, while fans see a
celebration of vulnerability and individuality.

## Usage

``` r
theme_coquette(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Snell Roundhand", "SnellRoundhand.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Snell Roundhand when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the hyper feminine wardrobe: ballet pink bows,
ribbon red hearts, pastel lavender and baby blue, pearls, and deep
cherry.

## See also

[Coquette aesthetic](https://en.wikipedia.org/wiki/Coquette_aesthetic)
on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Coquette") +
  theme_coquette(base_family = "sans", title_family = "sans")
```
