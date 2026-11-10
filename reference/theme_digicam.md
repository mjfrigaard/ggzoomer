# Digicam theme

Digital point and shoot cameras from the 2000s are back for their flash
heavy, slightly blurry photos. The palette follows the article's sensor
channels (red, green, and blue), an LCD screen, the flash, and the black
grip on a silver body.

## Usage

``` r
theme_digicam(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Courier New", "Courier New Bold.ttf")
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

## Value

A `ggplot2` theme object.

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
