#include "uart.h"

#define N 3

int A[N][N] = { {1, 2, 3},
                {4, 5, 6},
                {7, 8, 9},
              };

int B[N][N] = { {1, 1, 1},
                {2, 2, 2},
                {3, 3, 3},
              };

int C[N][N] = { {0, 0, 0},
                {0, 0, 0},
                {0, 0, 0},
              };

void matrix_add(int A[][N], int B[][N], int C[][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < N; j++)
        {
            C[i][j] = A[i][j] + B[i][j];
        }
    }
}

void main()
{
    // Your function called here
    matrix_add(A, B, C)
}

