require 'spec_helper'

describe MyCashflow do
  it 'has a version number' do
    expect(MyCashflow::VERSION).not_to be nil
  end

  it 'knows how to build a URL to a resource' do
    client = MyCashflow::Client.new
    expect(client.categories(5).subcategories.path).to eql('/categories/5/subcategories')
  end
end
