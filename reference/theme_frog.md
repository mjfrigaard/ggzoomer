# Frog theme

Frogs are tailless amphibians and a cottagecore and goblincore icon. Gen
Z's favorite frog is Animal Crossing's Froggy Chair, a green seat with a
wide red mouth. Fans get Froggy Chair tattoos, bake Froggy Chair cakes,
and print it on shirts. Frogcore extends the look to frog hoodies, rain
boots, and slippers. Frog memes, from wholesome mental health posts to
Arson Frog avatars, fill Gen Z feeds.

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

The palette follows Animal Crossing's Froggy Chair and frog memes:
froggy green, the wide red mouth, pond blue, Arson Frog blue, moss, and
lily pad green on belly cream.

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
