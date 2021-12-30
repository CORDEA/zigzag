const std = @import("std");

fn fib(n: i128) i128 {
    if (n < 2) {
        return n;
    }
    return fib(n-1) + fib(n-2);
}

pub fn run() anyerror!void {
    const stdout =  std.io.getStdOut().writer();
    try stdout.print("{}\n", .{ fib(20) });
}
