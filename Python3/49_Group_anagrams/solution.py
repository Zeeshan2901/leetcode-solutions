class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        output = {}

        for string in strs:
            sorted_string = ''.join(sorted(string))    
            if sorted_string not in output:
                output[sorted_string] = []
            output[sorted_string].append(string)

        return (list(output.values()))
