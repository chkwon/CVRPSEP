cd("src")
all_files = readdir()
for (i, file) in enumerate(all_files)
    if findfirst(".c", file) != nothing 
        print("src/$file ")
    end
    if findfirst(".h", file) != nothing 
        print("src/$file ")
    end    
end
println()