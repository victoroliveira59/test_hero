require 'rails_helper'

RSpec.describe User, type: :model do
	it "is invalid if the level is nat between 1 and 99" do
		user = build(:user, level: FFaker::Random.rand(100..9999))
		expect(user).to_not be_valid #Espera que esse teste não seja valido

	end
	it " returns the correct hero title " do
		nickname = FFaker::Name.first_name #cria somente o primeiro nome aleatório
		kind = %i[knigth  wizard].sample # transforma em simbolos
		level = FFaker::Random.rand(1..99) # cria uma margem de level

		user = User.create(nickname: nickname, kind: kind, level: level)
		expect(user.title).to eq("#{kind} #{nickname} ##{level}")
		end
end

