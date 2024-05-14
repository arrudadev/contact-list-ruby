class Contact
  def initialize(name, phone, email)
    @name = name
    @phone = phone
    @email = email
  end

  private def format_phone
    @phone.to_s.gsub(/(\d{2})(\d{5})(\d{4})/, '(\1) \2-\3')
  end

  def to_s
    "#{@name} - #{format_phone} - #{@email}\n"
  end
end