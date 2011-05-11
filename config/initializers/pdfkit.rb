
PDFKit.configure do |config|
  config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
  config.default_options = {
    :page_size =>"A4",
    :margin_top =>"0.25in",
    :margin_right =>"1in",
    :margin_bottom =>"0.25in",
    :margin_left =>"1in",
    :disable_smart_shrinking =>false
    }
end