json.array!(@forms) do |form|
  json.extract! form, :id, :question_one, :question_two, :question_three, :question_four
  json.url form_url(form, format: :json)
end
