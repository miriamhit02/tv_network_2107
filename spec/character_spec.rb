require './lib/character'

RSpec.describe Character do
  it 'exists' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt).to be_a(Character)
  end

  it 'has atributes' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.name).to eq("KITT")
    expect(kitt.actor).to eq("William Daniels")
    expect(kitt.salary).to eq(1_000_000)
  end
end
