# Ring light theme

Ring lights are the circular lights behind nearly every vlog, makeup
tutorial, and video call. The palette follows the article's adjustable
color temperature (warm 3200K and cool 5600K), skin tones on video
calls, and the gray and black ring and stand.

## Usage

``` r
theme_ringlight(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("DIN Alternate", "DIN Alternate Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to DIN Alternate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Ring flash](https://en.wikipedia.org/wiki/Ring_flash) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Ring light") +
  theme_ringlight(base_family = "sans", title_family = "sans")
```
