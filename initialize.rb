class Array
  def subtract_once(values)
    counts = values.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
    reject { |e| counts[e] -= 1 unless counts[e].zero? }
  end
end
