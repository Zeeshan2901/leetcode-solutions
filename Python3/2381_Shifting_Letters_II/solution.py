class Solution:
    def shiftingLetters(self, s: str, shifts: List[List[int]]) -> str:
        stringAsList = list(s)

        for i in shifts:
            startIndex, endIndex, direction = i[0], i[1], i[2]
            while startIndex <= endIndex:
                ascii_ = ord(stringAsList[startIndex])
                if direction == 1:
                    stringAsList[startIndex] = chr( 97 ) if ascii_ == 122 else chr( ascii_ + 1 )
                else:
                    stringAsList[startIndex] = chr( 122 ) if ascii_ == 97 else chr( ascii_ -1)
                startIndex = startIndex +1


        return "".join(stringAsList)
