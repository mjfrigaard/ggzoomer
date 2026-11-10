# Photo dump theme

A photo dump is a carousel post of loosely related phone photos from the
week. A photo dump is a batch of casual pictures posted all at once, and
it depends on the camera phone. Cameras have been a major selling point
of phones since the 2010s. Because phones share pictures almost
instantly, they work as personal content creation tools. Personal photos
also help people build shared memories, keep up friendships, and express
who they are.

## Usage

``` r
theme_photodump(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("American Typewriter", "AmericanTypewriter.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to American Typewriter when it's
  available, otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's camera phone shots in bright and low
light: golden hour, sunset coral, sky, night, park green, and lilac
dusk.

## See also

[Camera phone](https://en.wikipedia.org/wiki/Camera_phone) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Photo dump") +
  theme_photodump(base_family = "sans", title_family = "sans")
```
