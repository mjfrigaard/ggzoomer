# Group chat theme

Group chats are where friends plan, share memes, and leave each other on
read. Group chats have become Gen Z's third place, taking over from
malls and coffee shops as the place to hang out. Their humor runs on
memes that reference earlier memes. A 2025 Giphy survey found that about
89% of Gen Z and millennials check with their group chat before major
life decisions. Snap found that nearly two thirds of Gen Z shoppers
bought something after friends approved it in the chat.

## Usage

``` r
theme_groupchat(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Arial Rounded when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows stacked chat bubbles and emoji: iMessage blue, SMS
green, emoji yellow, heart red, typing gray, and dark mode black.

## See also

[Online chat](https://en.wikipedia.org/wiki/Online_chat) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Group chat") +
  theme_groupchat(base_family = "sans", title_family = "sans")
```
