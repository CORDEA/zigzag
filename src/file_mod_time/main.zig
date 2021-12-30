const std = @import("std");

const io = std.io;
const fs = std.fs;

const path = "file.txt";

pub fn run() anyerror!void {
    const stdout =  io.getStdOut().writer();
    const file = try fs.cwd().openFile(path, .{ .write = true });

    var stat = try file.stat();
    try stdout.print("{}\n", .{ stat.mtime });

    try file.updateTimes(stat.atime, @divFloor(stat.mtime, 2));
    stat = try file.stat();
    try stdout.print("{}\n", .{ stat.mtime });
}
