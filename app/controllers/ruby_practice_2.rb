def mask_article(str, arr)
    for i in arr
        s=strike(str, i)
    end
    return s
end

def strike(str, word)
    st="<strike>"+word+"</strike>"
    return str.gsub(word,st)
end

puts mask_article("Hello World! This is crap!", ["crap"]).class