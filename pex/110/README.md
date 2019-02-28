
# Abstract

In this exercise, you will implement functions to play the *Guess-the-Natural* game.

# The Oracle

Each of your functions will take an argument `f`, which is itself a function.
In each of your functions, you will compute a guess `c` which you then supply to `f`,
which tells you if your guess was *too low*, *correct*, or *too high*.

1. When `f(c) < 0` this means `c` is *too low*.
2. When `f(c) == 0` this means `c` is *correct*.
3. When `f(c) > 0` this means `c` is *too high*.

See `help make_oracle`.


# Task

Descriptions of the individual tasks are in the directories with the `+` prefix.
For example, if you need to make a function named `foo` then:

1. You will need to make a file named `foo.m` which will be in **this directory** (not `+foo`).
1. Detailed instructions about that function will be in the directory `+foo`.

Here are links to the tasks.

1. [down](+down)
1. [play](+play)
1. [up](+up)

