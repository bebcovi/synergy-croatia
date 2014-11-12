ActiveAdmin.register_page "Markdown" do
  menu false

  content partial: "index" do
    render("index")
  end
end
