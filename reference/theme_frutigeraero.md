# Frutiger Aero theme

Frutiger Aero is the glossy design style of the mid 2000s: bubbles,
water, grass, and blue skies. Frutiger Aero came back on TikTok, Tumblr,
and Reddit in 2022 and 2023. Gen Z links it to a digital childhood of
MSN Messenger and Windows Vista. Essays frame it as optimism, a glossy
contrast to flat, minimalist design and modern cynicism. Even design
writers admit it's hard to say exactly why it resonates.

## Usage

``` r
theme_frutigeraero(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Skia", "Skia.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Skia when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows glossy Vista era glass and water: sky blue, grass
green, deep ocean blue, lime, aqua, and bubble cyan.

## See also

[Frutiger Aero](https://en.wikipedia.org/wiki/Frutiger_Aero) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Frutiger Aero") +
  theme_frutigeraero(base_family = "sans", title_family = "sans")
```
