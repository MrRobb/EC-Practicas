# 3A
# 3.1
```assembly
    .data
mat1:   .space 5*6*4
mat2:   .space 3*5*1
        .align 1
mat3:   .space 2*2*8
mat4:   .word 2, 3, 1
        .word 2, 4, 3
```

# 3B
## 3.2
- @mat1 + (4*6 + 3) * 4
- @mat2 + (2*5 + 4) * 1
- @mat3 + (1*2 + 0) * 8
- @mat4 + (0*3 + 2) * 4

## 3.5
@mat + (6*i + 2) * 4

```tex
@mat + (6*(i+1) + 2) * 4 - @mat + (6*i + 2) * 4
= 24*i + 24 + 8 - 24i - 8
= 24
```
