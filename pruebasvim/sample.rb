class Foo < Baz
    attr_reader :bar

    def initialize(bar)
        @bar = bar
    end

    def get_down
        result = calculate(['one thing', 'other thing'], 2)
        result.to_json
    end

    def calculate(words, how_many)
        puts "this also contains other"
        complicated_stuff_here
    end
end
