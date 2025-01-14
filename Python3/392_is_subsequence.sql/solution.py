class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        scounter = 0
        tCounter = 0

        while scounter < len(s) and tCounter < len(t):
            if s[scounter] == t[tCounter]:
                scounter = scounter +1
                tCounter = tCounter + 1
            else:
                tCounter = tCounter + 1

        return True if scounter == len(s) else False
