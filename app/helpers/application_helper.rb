module ApplicationHelper
  def language_lib(organizations)
    @languages = {}
    language_list = []
    organizations.each do |organization|
      language_list << organization["languages"]
    end
    language_list.each do |language|
      language.each do |words|
        @languages[words] = true
      end
    end
    @languages
  end

  def gender_lib(organizations)
    @genders = {}
    gender_list = []
    organizations.each do |organization|
      gender_list << organization["genders"]
    end
    gender_list.each do |gender_obj|
      gender_obj.each do |gender|
        @genders[gender] = true
      end
    end
    @genders
  end


end

