# Wired earbuds theme

Wired earbuds made a comeback as a style statement and a break from
charging. Gen Z calls AirPods passé and wears the cord as an analog
statement against always on tech, alongside dumbphones, instant cameras,
and vinyl. Bella Hadid, Harry Styles, and Charli XCX have all been seen
in wired earbuds. Searches for wired headphones hit 2.6 million in April
2025, up 68% in one month. Practical perks help: no charging and nothing
to lose.

## Usage

``` r
theme_wiredbuds(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marker Felt", "MarkerFelt.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Marker Felt when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows corded earbuds: Panasonic red, lilac, mint, cable
gray, and black against Apple white.

## See also

[Headphones](https://en.wikipedia.org/wiki/Headphones) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Wired earbuds") +
  theme_wiredbuds(base_family = "sans", title_family = "sans")
```
