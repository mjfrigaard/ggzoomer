# Group chat theme

Group chats are where friends plan, share memes, and leave each other on
read. A group chat (often shortened to GC) is a chat room for a set of
friends. Many social media platforms now work as chat rooms, including
WhatsApp, Discord, Snapchat, Instagram, and TikTok. Researchers have
studied how teenagers and young people reshape language in these chats.

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

The palette follows chat bubbles from the article's instant messengers:
sent blue, received gray, text green, typing purple, reaction yellow,
and unread red.

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
