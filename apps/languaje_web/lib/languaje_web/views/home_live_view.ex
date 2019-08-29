defmodule LanguajeWeb.HomeLiveView do
    use LanguajeWeb, :view
    def render_sections(template, assigns) do
        render(LanguajeWeb.HomeView, template, assigns)
      end
end