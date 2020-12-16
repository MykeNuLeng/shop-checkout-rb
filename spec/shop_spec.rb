require 'shop'
describe Shop do
  it 'will output -1 for incorrect inputs' do
    expect(subject.checkout('aBc')).to eq -1
  end

  it 'will output -1 for incorrect inputs' do
    expect(subject.checkout('-B8x')).to eq -1
  end

  it 'will output -1 for incorrect inputs' do
    expect(subject.checkout(18)).to eq -1
  end

  it 'can correctly output a number if inputs are correct' do
    expect(subject.checkout('AA')).to eq 100
  end

  it 'can correctly output a number from a range of items' do
    expect(subject.checkout('ABCD')).to eq 115
  end

  it 'can correctly account for deals' do
    expect(subject.checkout('AAA')).to eq 130
  end

  it 'can correctly account for deals' do
    expect(subject.checkout('AAAAAA')).to eq 260
  end
end
