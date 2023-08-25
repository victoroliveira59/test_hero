FactoryBot.define do
	factory :user do
		nickname { FFaker::Lorem.word } # Gera uma palavre aleatória
		level { FFaker::Random.rand(1..99) } # Escolhe um número entre 1 e 99
		kind { %i[knigth wizard].sample } # Escolhe entre knigth e wizard
	end
end