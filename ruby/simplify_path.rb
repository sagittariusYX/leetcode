# @param {String} path
# @return {String}
def simplify_path(path)
  stack = []
  for item in path.split("/")
    if ["", "."].include? item
      next
    elsif item == ".."
      stack.pop if stack
    else
      stack << item
    end
  end
  return "/" + stack.join("/")
end
