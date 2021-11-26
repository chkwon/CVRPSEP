cd("src")
all_files = readdir()
for (i, file) in enumerate(all_files)
    new_filename = lowercase(file)
    new_filename = replace(new_filename, "cpp" => "c")
    run(`mv $file $new_filename`)
    println("$file => $new_filename")
end