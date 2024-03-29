require 'spec_helper'

describe PrimesDrawer do
  it 'prints a table' do
    primes_array = [2,3,5,7,11]
    table_output = <<-eos
+----+----+----+----+----+-----+
|    Primes Multiplication     |
|            Table             |
+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
+----+----+----+----+----+-----+
| 2  |  4 |  6 | 10 | 14 |  22 |
| 3  |  6 |  9 | 15 | 21 |  33 |
| 5  | 10 | 15 | 25 | 35 |  55 |
| 7  | 14 | 21 | 35 | 49 |  77 |
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+
    eos
    expect{ PrimesDrawer.new.draw_table(primes_array) }.to output(table_output).to_stdout
  end
end
