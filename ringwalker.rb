module RingWalker
    def self.final_name(names, moves, start_at: 1)
        pos = start_at % names.length
        moves.each do |m|
            dir = m[0]&.upcase
            steps = m[1..]&.to_i

            pos = (pos + (dir == "R" ? steps : -steps)) % names.length
        end

        result = names[pos]
        puts result
        result
    end
end