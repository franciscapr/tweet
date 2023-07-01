require 'faker'

powers = ["Super fuerza", "Vuelo", "Invisibilidad", "Telequinesis", "Regeneración", "Control elemental"]

100.times do |t|
  username = Faker::Superhero.name
  power = powers[t % powers.length]  # Asigna el poder de forma secuencial, repitiendo la lista si es necesario

  Tweet.create(
    username: username,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    power: power
  )
end
