# UNSEQ - revert a sequence (of numbers) to rules

A simple Unix tool to describe a list of numbers (typically, if it is too long for visual inspection), like the output of one or more `seq` commands, by a set of rules, similar to what the `seq` commands would take to regenerate the same list.

Documentation to be completed (as of November 2023).

The option `SEP=""` generates a compact output format (without spaces).

## Usage

The `make tests` command yields an illustrative list of examples for usage.

Not-number lines are ignored, but printed out.

### Known limits

Works on a list of numbers given line by line. Use other tools to cut your lines, if you have a multi-number lines type of input.

## Install

This tool can be installed standalone in any directory, which is part of the `$PATH` variable, e.g. `~/.local/bin/`, `~/bin`, `/usr/local/bin`, `/usr/bin`, ….
A cleaner, more standard way should be provided in the future for standard distributions, 
unless we can find a more appropriate place like a suite of commandline tools for Linux, 
which accepts `unseq` among them.

### Prerequisite

The only prerequisite is the installation of `awk`.

## Design

Any sequence of numbers that can be generated with `seq` or an equivalent tool or a sequence of 
calls to it, should be recognised and correctly translated back by `unseq`.

The input is expected in decimal number form, one number per line (like `seq` output).

## Contribute

I would be glad to hear from you about missing cases. Create a [new issue on github](https://github.com/DirkHoffmann/unseq/issues) for that, including providing patches (pull requests).

