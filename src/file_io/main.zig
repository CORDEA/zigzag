const std = @import("std");

const fs = std.fs;

const input = "input.txt";
const output = "output.txt";

pub fn run() anyerror!void {
    const cwd = fs.cwd();
    try cwd.copyFile(input, cwd, output, .{});
}
