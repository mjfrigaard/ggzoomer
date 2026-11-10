# Gorpcore theme

Gorpcore is hiking gear (shell jackets, fleece, and trail shoes) worn as
everyday streetwear. Gorpcore turns outdoor gear into everyday style. It
started out male led, but it has reached new heights on TikTok and
Pinterest, especially among Gen Z women. Coverage ties it to the mental
health benefits of time outside, tech fatigue after COVID, and Gen Z's
taste for sustainable goods. You don't have to hike to wear it.

## Usage

``` r
theme_gorpcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to DIN Condensed when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows technical outdoor gear worn as streetwear: safety
orange, forest green, glacier blue, olive drab, trail tan, and stone
gray, with black nylon.

## See also

[Gorpcore](https://en.wikipedia.org/wiki/Gorpcore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Gorpcore") +
  theme_gorpcore(base_family = "sans", title_family = "sans")
```
