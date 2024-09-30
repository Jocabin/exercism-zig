const print = @import("std").debug.print;

pub fn eggCount(number: usize) usize {
    var count: usize = 0;
    var n = number;

    while (n != 0) {
        count += n % 2;
        n /= 2;
    }

    return count;
}
