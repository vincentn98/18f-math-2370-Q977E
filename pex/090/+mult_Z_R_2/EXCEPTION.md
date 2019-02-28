
# Exceptions

This page is a listing of correct behavior for `mult_Z_R_2` (these inputs should generate these errors). Try to copy/paste into the MATLAB command-line.

<table><tr><th>Evaluation</th><th>Exception Identifier</th><th>Exception Message</th></tr><tr><td><code>mult_Z_R_2({},&nbsp;{''})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(1,&nbsp;{{}})</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;'x')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;{})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({''},&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;{})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;true)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;'x')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;[])</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(true,&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(0,&nbsp;{[]})</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(@(x)x,&nbsp;{[]})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;-3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(true,&nbsp;true)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;-3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;true)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({''},&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(true,&nbsp;-3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(1,&nbsp;{''})</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({},&nbsp;@()0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;{[]})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({{}},&nbsp;'x')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({},&nbsp;false)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({},&nbsp;{[]})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;true)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(0,&nbsp;{})</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;false)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;[])</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2([],&nbsp;{})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(1,&nbsp;{[]})</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2({},&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(0,&nbsp;'x')</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;[])</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2([],&nbsp;{[]})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({},&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;{{}})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;[])</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({''},&nbsp;false)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;true)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@(x)x,&nbsp;@()0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(0,&nbsp;'x')</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2([],&nbsp;'x')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(-1,&nbsp;@(x)x)</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(0,&nbsp;'x')</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;[])</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@()0,&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(@(x)x,&nbsp;'x')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('',&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;-3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({''},&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(-1,&nbsp;'')</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(true,&nbsp;{})</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(-3.141593,&nbsp;-3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(-3.141593,&nbsp;@(x)x)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({[]},&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2({''},&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2([],&nbsp;@()0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(1,&nbsp;'x')</code></td><td><code>mult_Z_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;@()0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2('x',&nbsp;3.141593)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2([],&nbsp;@()0)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(3.141593,&nbsp;struct(...))</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(false,&nbsp;'')</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr><tr><td><code>mult_Z_R_2(struct(...),&nbsp;1)</code></td><td><code>mult_Z_R_2:integer_n</code></td><td>Input <code>n</code> must be integer.</td></tr></table>