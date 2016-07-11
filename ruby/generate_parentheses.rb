# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  [].tap do |result|
    _generate_parentheses(n, 0, 0, '', result)
  end
end

private def _generate_parentheses(pairs, lparen, rparen, tracing, result)
  if lparen + rparen == pairs * 2
    result << tracing
    return
  end

  if lparen < pairs
    _generate_parentheses(pairs, lparen + 1, rparen, tracing + '(', result)
  end

  if rparen < pairs && rparen < lparen
    _generate_parentheses(pairs, lparen, rparen + 1, tracing + ')', result)
  end
end
