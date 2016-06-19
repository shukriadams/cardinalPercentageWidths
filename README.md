Cardinal Percentage Widths
===
A linter for scss-lint (https://github.com/brigade/scss-lint). Warns if width values (in percent) do not match a given list. This is used to catch arbitrary and irregular % widths which tend not to scale well in responsive design.


Config
---

linters:

    CardinalPercentageWidths:
        # set to true to enable
        enabled: true
        # array of allowed percentages
        values: [0, 50, 66, 25, 100]

Use
---
This linter is currently not available as a Gem. To use it, place /lib/CardinalPercentageWidths.rb in a folder on your system, then add that folder to your .scss-lint.yml file as follows

    plugin_directories: ['/foo/bar']