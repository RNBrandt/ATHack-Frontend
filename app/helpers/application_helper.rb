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


end

