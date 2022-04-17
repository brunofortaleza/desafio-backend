FactoryBot.define do
  factory :deputy do
    name { 'rafa' }
    register_id { 160639 }
    chair_number { '142424' }
    cpf { '82934923849' }
    state { 'TO' }
    political_party { 'TAU' }
    legislature { build(:legislature) }
  end
end
