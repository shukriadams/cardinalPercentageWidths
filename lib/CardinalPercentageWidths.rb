module SCSSLint
    class Linter::CardinalPercentageWidths < Linter
        include LinterRegistry
        PERCENT_REGEX=/^\d+%$/
    
        def visit_root(_node)
            @allowed_values = config['values']
            yield # Continue linting children
        end

        def visit_prop(node)
            property = node.name.join
            if (property == 'width')
                if node.value.respond_to?(:value)
                    node.value.value.to_s.scan(PERCENT_REGEX).each do |matches|
                        if matches.include?('%')
                            value = node.value.value.to_s.sub! '%', ''
                            value_int = value.to_i
                            if !@allowed_values.include?(value_int)
                                add_lint(node, "Width #{value_int}% should match #{@allowed_values}.")
                            end
                        end
                    end
                end
            end
        end

    end
end