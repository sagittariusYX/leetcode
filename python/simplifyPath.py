class Solution(object):
    def simplifyPath(self, path):
        """
        :type path: str
        :rtype: str
        """
        stack = []
        for item in path.split("/"):
            if item in ["", "."]:
                next
            elif item == "..":
                if stack:
                    stack.pop() 
            else:
                stack.append(item)
        return "/" + "/".join(stack)
