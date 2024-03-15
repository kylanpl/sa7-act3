def parse_csv(file_path)
  data = []
  lines = File.readlines(file_path)

  first_line = lines[0].chomp.split(',')

  lines[1..-1].each do |line|
    contents = line.chomp.split(',')
    row = {}
    first_line.each_with_index do |name, index|
      row[name] = contents[index]
    end

    data.push row
  end
  return data
end

file_path = 'data.csv'
result = parse_csv(file_path)
puts result.inspect
