# Liminal space theme

Liminal space is an internet aesthetic of empty in between places:
hallways, waiting rooms, and closed malls. Liminal space images show
empty hallways, waiting rooms, and closed malls. They spread online in
2019 and became tied to the Backrooms, an online urban legend that
started on 4chan. Interest grew during the COVID-19 pandemic, when empty
public spaces were everywhere. A 2022 study found that small changes to
familiar buildings can make them feel uncanny.

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

The palette follows the article's empty hallways, pool rooms, and Twin
Peaks Black Lodge: red curtains, black floor, mustard walls, fluorescent
green, pool blue, and concrete.

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
