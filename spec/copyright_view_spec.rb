RSpec.describe CopyrightView do
  it "has a version number" do
    expect(CopyrightView::VERSION).not_to be nil
  end

  it "returns string with default values" do
    copyright_response = CopyrightView::Renderer.copyright
    expect(copyright_response).to eq "&copy;2024"
  end

  it "return proper response when given all the inputs" do
    copyright_response = CopyrightView::Renderer.copyright(start_year: 2020, company_name: "Your Company", message: "All rights reserved.")
    expect(copyright_response).to eq "&copy;2020-2024 - Your Company - All rights reserved."
  end
end
