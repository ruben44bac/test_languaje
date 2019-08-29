defmodule LanguajeWeb.Plugs.SetLocale do
    import Plug.Conn # 1
    @supported_locales Gettext.known_locales(LanguajeWeb.Gettext) # 2
    
    def init(_options), do: nil # 3
    def call(%Plug.Conn{params: %{"locale" => locale}} = conn, _options) when locale in @supported_locales do
        LanguajeWeb.Gettext |> Gettext.put_locale(locale)
        conn |> put_resp_cookie "locale", locale, max_age: 365*24*60*60
    end
    def call(conn, _options) do
        case fetch_locale_from(conn) do
          nil -> conn
          locale ->
            LanguajeWeb.Gettext |> Gettext.put_locale(locale)
            conn |> put_resp_cookie "locale", locale, max_age: 365*24*60*60
        end
    end
    defp fetch_locale_from(conn) do
        (conn.params["locale"] || conn.cookies["locale"]) |>
        check_locale
    end
    defp check_locale(locale) when locale in @supported_locales, do: locale
    defp check_locale(_), do: nil
    
  end