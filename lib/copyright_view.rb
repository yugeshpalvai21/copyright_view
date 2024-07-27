require_relative "copyright_view/version"

module CopyrightView
  class Renderer
    def self.copyright(start_year: nil, company_name: nil, message: nil)
      str = <<~COPY
        &copy;#{start_year ? "#{start_year}-" : ""}#{Time.now.year}    
        #{company_name if company_name} 
        #{message if message}
      COPY
      str.strip.split("\n").map(&:strip).join(" - ")
    end
  end
end
