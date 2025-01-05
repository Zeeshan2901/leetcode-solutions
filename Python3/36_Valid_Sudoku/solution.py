class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:

        rowSet = defaultdict(set)
        colSet = defaultdict(set)
        gridSet= defaultdict(set)

        for row in range(0,9):
            for column in range(0,9):
                digit = board[row][column]
                if digit == ".":
                    continue
                elif (digit in rowSet[row] or
                    digit in colSet[column] or
                    digit in gridSet[(row //3, column //3)]):
                    return False
                else:
                    rowSet[row].add(digit)
                    colSet[column].add(digit)
                    gridSet[(row //3, column //3)].add(digit)
        return True

        
