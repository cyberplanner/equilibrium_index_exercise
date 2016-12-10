#!/usr/bin/env ruby
class Equilibrium

  def find_first_equilibrium(array)
    solution = array.each_index.select do |i|
      array[0...i].inject(0, :+) == array[i+1..-1].inject(0, :+)
    end
    if solution.empty?
      -1
    else
      solution.first
    end
  end

end
