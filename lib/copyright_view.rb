require "copyright_view/version"

module CopyrightView
  class Renderer
  	def self.copyright start_year, company_name, message
  		"Copyright &copy#{start_year}-#{Time.now.year} | <b>#{company_name}</b> | #{message}".html_safe
  	end
  end
end
