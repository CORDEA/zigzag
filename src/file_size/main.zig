const std = @import("std");

const io = std.io;
const fs = std.fs;

const filename = "input.txt";

pub fn run() anyerror!void {
    const stdout =  io.getStdOut().writer();

    var file = try fs.cwd().openFile(filename, .{});
    var stat = try file.stat();
    try stdout.print("{}\n", .{ stat.size });

    file = try fs.openFileAbsolute("/" ++ filename, .{});
    stat = try file.stat();
    try stdout.print("{}\n", .{ stat.size });
}
