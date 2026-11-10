# Mermaidcore theme

Mermaidcore is a fashion trend of shells, pearls, sequins, and
iridescent sea colors. By 2023, \#mermaidcore had passed 333 million
views on TikTok. Writers tie it to Gen Z's nostalgia, romanticism, and
need for escapism and fantasy. It draws on The Little Mermaid, H2O: Just
Add Water, and Barbie mermaid films. It reads younger and more whimsical
than coastal grandmother, and an edgier offshoot is called mermaid
sleaze.

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

## Details

The palette follows iridescent sheer fabrics, pearls, and shells:
seafoam, ocean teal, lagoon blue, iridescent lilac, shell pink, and
treasure gold on pearl white.

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
