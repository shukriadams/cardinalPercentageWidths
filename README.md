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

