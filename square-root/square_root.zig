const pow = @import("std").math.pow;

pub fn squareRoot(radicand: usize) usize {
    return @intFromFloat(pow(f32, @floatFromInt(radicand), 0.5));
}
