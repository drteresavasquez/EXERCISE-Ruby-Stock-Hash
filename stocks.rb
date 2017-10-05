stock_dict = { 
    'GM' => 'General Motors',
    'CAT' => 'Caterpillar', 
    'EK' => "Eastman Kodak" 
}

purchases = [ 
    [ 'GM', 100, '10-sep-2001', 48 ],
    [ 'CAT', 100, '1-apr-1999', 24 ],
    [ 'GM', 200, '1-jul-1998', 56 ]
]

for item in purchases
    stock_dict.each do |key, value|
        if key == item[0]
            puts "#{key}: #{value}"
            puts "Total Paid: $#{(item[1]) * (item[3])}"
        end
    end
end

stuff = Hash.new
for item in purchases
    stock_dict.each do |key, value|
        if key == item[0]
            if stuff.has_key?(key) == true
                stuff[key] = (stuff[key]) + (item[1] * item[3])
            else 
                stuff[key] = (item[1]) * (item[3])
            end
        end
    end
end
puts stuff
