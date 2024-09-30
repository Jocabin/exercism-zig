// Please implement the `ComputationError.IllegalArgument` error.

pub const ComputationError = error{IllegalArgument};

pub fn steps(number: usize) anyerror!usize {
    if (number == 0) {
        return error.IllegalArgument;
    }

    var n = number;
    var cnt: usize = 0;

    while (n != 1) {
        if (n % 2 == 0) {
            n /= 2;
        } else {
            n = (n * 3) + 1;
        }
        cnt += 1;
    }

    return cnt;
}
