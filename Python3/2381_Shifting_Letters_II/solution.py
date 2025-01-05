class Solution:
    def shiftingLetters(self, s: str, shifts: List[List[int]]) -> str:
        n = len(s)
        auxArray = [0] * (n+1)

        for i in shifts:
            start, end, direction = i
            auxArray[start] += direction*2 -1
            auxArray[end +1] -= direction*2 -1
            
        for i in range(1,n):
            auxArray[i] += auxArray[i-1]

        slist = list(s)
        for index in range(n):
            currentCharacter = ord(s[index])
            ascii_ = currentCharacter + auxArray[index]%26
            if ascii_ < 97:
                ascii_ += 26  
            elif ascii_ > 122:
                ascii_ -= 26
            slist[index] = chr(ascii_)

        return "".join(slist)
