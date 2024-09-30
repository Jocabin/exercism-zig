const std = @import("std");
const mem = std.mem;

pub fn rotate(allocator: mem.Allocator, text: []const u8, shiftKey: u5) mem.Allocator.Error![]u8 {
    const array = try allocator.alloc(u8, text.len);

    for (0..text.len) |i| {
        var c = text[i];

        if (c >= 'a' and c <= 'z') {
            c += shiftKey;

            if (c > 'z') {
                c = c - 'z' + 'a' - 1;
            }
        } else if (c >= 'A' and c <= 'Z') {
            c += shiftKey;

            if (c > 'Z') {
                c = c - 'Z' + 'A' - 1;
            }
        }

        array[i] = c;
    }

    return array;
}
