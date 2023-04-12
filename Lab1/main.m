var_x = [1, 1, -1, -1; 1, -1, 1, -1]

result1 = hebb(var_x, [1, 1, 1, 1]);
disp("Boolean function 1")
disp(result1);

result2 = hebb(var_x, [1, 1, 1, -1]);
disp("Boolean function 2") % AND
disp(result2);

result3 = hebb(var_x, [1, 1, -1, 1]);
disp("Boolean function 3")
disp(result3);

result4 = hebb(var_x, [1, 1, -1, -1]);
disp("Boolean function 4")
disp(result4);

result5 = hebb(var_x, [1, -1, 1, 1]);
disp("Boolean function 5")
disp(result5);

result6 = hebb(var_x, [1, -1, 1, -1]);
disp("Boolean function 6")
disp(result6);

result7 = hebb(var_x, [1, -1, -1, 1]);
disp("Boolean function 7") % XOR
disp(result7);

result8 = hebb(var_x, [1, -1, -1, -1]);
disp("Boolean function 8") % OR
disp(result8);

result9 = hebb(var_x, [-1, 1, 1, 1]);
disp("Boolean function 9") % NOR
disp(result9);

result10 = hebb(var_x, [-1, 1, 1, -1]);
disp("Boolean function 10") %NXOR
disp(result10);

result11 = hebb(var_x, [-1, 1, -1, 1]);
disp("Boolean function 11")
disp(result11);

result12 = hebb(var_x, [-1, 1, -1, -1]);
disp("Boolean function 12")
disp(result12);

result13 = hebb(var_x, [-1, -1, 1, 1]);
disp("Boolean function 13")
disp(result13);

result14 = hebb(var_x, [-1, -1, 1, -1]);
disp("Boolean function 14")
disp(result14);

result15 = hebb(var_x, [-1, -1, -1, 1]);
disp("Boolean function 15") %NAND
disp(result15);

result16 = hebb(var_x, [-1, -1, -1, -1]);
disp("Boolean function 16")
disp(result16);

