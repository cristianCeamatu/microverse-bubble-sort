require_relative '../main.rb'

describe '#bubble_sort' do
  it 'sorts an array of integers' do
    expect(bubble_sort([4, 7, 1, -2])).to eql([-2, 1, 4, 7])
  end

  it 'sorts an array of strings' do
    expect(bubble_sort(%w[Cristian Andreea Bello Marco])).to eql(%w[Andreea Bello Cristian Marco])
  end
end

describe '#bubble_sort_by' do
  it 'gives an error when no block given' do
    expect { bubble_sort_by([4, 7, 1, -2]) }.to raise_error(LocalJumpError)
  end

  it 'sorts an array of integers depending on the given block condition' do
    expect(bubble_sort_by([2, 5, 7, 22, -7]) { |left, right| right - left }).to eql([22, 7, 5, 2, -7])
  end

  it 'sorts an array of strings depending on the given block condition' do
    expect(bubble_sort_by(%w[hi hello h hm]) { |left, right| right.length - left.length }).to eql(%w[hello hi hm h])
  end
end
