const std = @import("std");

pub fn main() anyerror!void {
    try @import("file_io/main.zig").run();
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
