cd("src")
all_files = readdir()
for (i, file) in enumerate(all_files)
    new_filename = lowercase(file)
    new_filename = replace(new_filename, "cpp" => "c")
    try
        println("$file => $new_filename")
        run(`git mv $file $new_filename`)
    catch e 
    end
end