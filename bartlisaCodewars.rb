def list (names)
    if (names.length == 0)
            return ""
    end
    if (names.length == 1)
            return names[0][:name]
    end
    output_string = ""
    for i in 0...names.length()
        if (i == names.length() - 1)
            output_string += "& "
            output_string += names[i][:name]
        elsif (i == (names.length() -2))
                output_string += names[i][:name] + " "
        else 
                output_string += names[i][:name] + ", "
        end
    end
    return output_string
end

testlist = [{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]
puts (list(testlist))