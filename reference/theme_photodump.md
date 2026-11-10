# Photo dump theme

A photo dump is a carousel post of loosely related phone photos from the
week. A photo dump is a loose Instagram carousel of unposed shots,
blurry photos, screenshots, and memes. The format traces back to summer
2020 and spread as celebrities like Dua Lipa and Olivia Rodrigo adopted
it. Gen Z uses it to signal authenticity and push back on the pressure
to keep a perfect feed. Critics note the effortless look is often
carefully curated.

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

The palette follows a casual camera roll carousel: Instagram magenta,
faded denim, sunset orange, washed olive, film grain beige, and blurry
night black.

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
