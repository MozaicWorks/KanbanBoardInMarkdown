# Kanban Board in Markdown

This is a simple implementation of a generator for a Kanban board defined as markdown.

Feel free to clone it, modify it, send push requests, let us know how you've changed it, or suggest improvements.

## Goal

Alex Bolboaca has created this for himself. It allows him to write the tasks in a markdown file in a normal structure, and then visualize the work as a Kanban board.

If you find this useful, great!

## Prerequisites

You need the following for this to work:

* pandoc
* make

## How to use

* Check out the sample `board.md`
* Edit it as you wish
* Run `make`
* Run `make open` to see the result (works with xdg-open, which probably means only on Linux systems)

## Limitations

This is a very simple implementation, and therefore has a lot of limitations. The tested structure for the markdown document is as follows:

~~~

# Board title

## First Column

* Task 1
* Task 2

## Second Column

* Task 3
* Task 4

[Repeat the blocks as needed]
~~~

Each task can contain links, italic, or bold text. Links open by default in the same window, to open them by default in a new window use in markdown `[Link text](link url){target="_blank"}`

## Implementation details

The default html template from `pandoc` was modified to include a `<div class='board'>` that allows styling of the board. For now, this `div` includes the board title as well.

The board itself is displayed as a CSS grid, with:

* `h1` being the first row, and spanning multiple columns
* `h2` being the second row (kanban column name)
* `ul` being the third row

The makefile is used for running `pandoc` with the custom html template and CSS style.

