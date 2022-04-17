FactoryBot.define do
  factory :expense do
    number_sub { '12626' }
    number_speficic { '6255165' }
    description_specific { 'descri' }
    provider { 'prov' }
    document_number { 5364 }
    cpf_cnpj { '04161812305' }
    document_type { 12 }
    emission_date { Time.now }
    document_value { 126.00 }
    retention_value { 32.01 }
    liquid_value { 56.05 }
    month { 02 }
    year { 2022 }
    portion { 8 }
    passenger { 'pass' }
    stretch { 'stret' }
    batch { 'bat' }
    refund { 'ref' }
    restitution { 52.06 }
    document_id { 25 }
    url_document { 'https://teste.com.br' }
    expense_type { build(:expense_type) }
    deputy { build(:deputy) }
  end
end
