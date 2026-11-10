# Liminal space theme

Liminal space is an internet aesthetic of empty in between places:
hallways, waiting rooms, and closed malls. Liminal space images began
with a 2019 4chan post that spawned the Backrooms, then spread across
Reddit and TikTok. Commentators tie their appeal to childhood memories
of malls and schools. Empty streets during the pandemic lockdowns made
the feeling familiar. YPulse reported in 2026 that Gen Z loves films and
shows set in liminal spaces.

## Usage

``` r
theme_liminal(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Andale Mono", "Andale Mono.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Andale Mono when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows empty Backrooms hallways and dated malls:
fluorescent yellow, stained carpet beige, pool tile aqua, concrete gray,
mall teal, and night parking lot orange.

## See also

[Liminal space](https://en.wikipedia.org/wiki/Liminal_space) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Liminal space") +
  theme_liminal(base_family = "sans", title_family = "sans")
```
