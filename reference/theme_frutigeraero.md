# Frutiger Aero theme

Frutiger Aero is the glossy design style of the mid 2000s: bubbles,
water, grass, and blue skies. Frutiger Aero is the glossy computer
design style of the mid-2000s to early 2010s. It was named in 2018 and
came back as an internet aesthetic in 2023. Gen Z embraced it as an
object of nostalgia, and Frutiger Aero posts drew big audiences on
YouTube and TikTok. Some critics see its influence in Apple's 2025
Liquid Glass design.

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

The palette follows the article's blue skies, grass, aurorae, and bright
colors ("yellows, and particularly blues and greens").

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
