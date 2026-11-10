# Digicam theme

Digital point and shoot cameras from the 2000s are back for their flash
heavy, slightly blurry photos. Gen Z revived early 2000s digital cameras
around 2022 on TikTok and Instagram. Many pulled them out of their
parents' drawers or bought them secondhand. The grainy, flash heavy
shots feel more authentic than heavily processed phone photos. There is
nostalgia, too: many of these users grew up being photographed on the
same cameras.

## Usage

``` r
theme_digicam(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Courier New", "Courier New Bold.ttf"),
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

  Title font family. Defaults to Courier New when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows flash heavy early 2000s photos against a dark
background: a metallic silver body, the orange date stamp, LCD blue,
candy pink, gunmetal, and flash white.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Digital camera](https://en.wikipedia.org/wiki/Digital_camera) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Digicam") +
  theme_digicam(base_family = "sans", title_family = "sans")
```
