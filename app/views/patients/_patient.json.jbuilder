json.extract! patient, :id, :firstname, :lastname, :dob, :gender :address, :phonenumber, :injury, :infection, :created_at, :updated_at
json.url patient_url(patient, format: :json)
