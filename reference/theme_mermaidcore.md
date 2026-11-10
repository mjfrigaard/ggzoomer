# Mermaidcore theme

Mermaidcore is a fashion trend of shells, pearls, sequins, and
iridescent sea colors. The palette follows the Mermaid article's pale
green hair, scales, and sea, with the nacre shell's iridescence:
seafoam, teal, lilac, coral, deep sea, and pearl gold.

## Usage

``` r
theme_mermaidcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Apple Chancery", "Apple Chancery.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Apple Chancery when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Mermaid](https://en.wikipedia.org/wiki/Mermaid) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Mermaidcore") +
  theme_mermaidcore(base_family = "sans", title_family = "sans")
```
