# Frog theme

Frogs are tailless amphibians and a cottagecore and goblincore icon.
Frogs show up in myths, fairy tales, and modern culture, from Kermit the
Frog to the game Frogger. They also warn us about the planet. A drop in
frog numbers is an early sign of environmental damage, and frog
populations around the world have fallen sharply since the 1950s.

## Usage

``` r
theme_frog(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Superclarendon", "Superclarendon.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Superclarendon when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's skin colors: camouflage green and
dappled brown, warning red or yellow and black, and the blue flanks of
the red eyed tree frog.

## See also

[Frog](https://en.wikipedia.org/wiki/Frog) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Frog") +
  theme_frog(base_family = "sans", title_family = "sans")
```
