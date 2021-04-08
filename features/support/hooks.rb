Before do
  page.current_window.resize_to(1440, 900)
end

Before ("@lotofacil") do
  @lotofacil = LotoFacil.new
end
