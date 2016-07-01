module ApplicationHelper
  def language_lib(organizations)
    languages_hash = {}
    language_list = []
    @languages = []
    organizations.each do |organization|
      language_list << organization["languages"]
    end
    language_list.each do |language|
      language.each do |words|
        languages_hash[words] = true
      end
    end
    languages_hash.each do |word, value|
      @languages << word
    end
    @languages.sort!
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

