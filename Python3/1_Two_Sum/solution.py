class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        complementsDict = {}

        for i in range(len(nums)):
            comp = target - nums[i]
            if comp in complementsDict:
                return [complementsDict[comp], i]
            else:
                complementsDict[nums[i]] =i
            
        return []
        
