class Equilibrium

  def solution(array)
    array.each_index.select do |i|
      array[0...i].inject(0, :+) == array[i+1..-1].inject(0, :+)
    end
  end
  
end
