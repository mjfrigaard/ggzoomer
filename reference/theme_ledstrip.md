# LED strip theme

LED strip lights are the adhesive color changing lights that line
bedroom ceilings and desks. LED strips are often called TikTok lights.
Refinery29 tracked the trend on TikTok from 2020 onward and called it
Gen Z's answer to the fairy lights of the 2010s. For teens in bare
bedrooms or dorms, a cheap strip of lights is one of the few ways to
make a space their own. Recent coverage notes Gen Z lighting turning
softer and dimmer.

## Usage

``` r
theme_ledstrip(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Silom", "Silom.ttf"),
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

  Title font family. Defaults to Silom when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows TikTok lights along a dark bedroom wall: hot pink,
electric blue, purple, red, cyan, and green.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[LED strip light](https://en.wikipedia.org/wiki/LED_strip_light) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "LED strip") +
  theme_ledstrip(base_family = "sans", title_family = "sans")
```
