defmodule LanguajeWeb.HomeLive do
    use Phoenix.LiveView
    @doc """  
    Experimento
    def render(assigns) do
        
        resp = assigns.socket
            |> Map.put(:private, %{assigned_new: {%{locale: "en"}, []}, connect_params: %{}})
            |> init_home("en")
        resp_1 = assigns
            |> Map.put(:socket, resp)
            IO.inspect(resp_1, label: "SOCKET --- >   ")

        LanguajeWeb.HomeLiveView.render("index.html", resp_1)
    end

    def mount(locale, socket) do
        IO.inspect(socket, label: "mount  ocketsocketsocket --- >   ")
        {locale, _} = socket.private.assigned_new
        case locale do
            %{locale: locale} -> assign_languaje(socket, locale)
            _ -> assign_languaje(socket)
        end
    end

    def handle_event("paginator_list", _params, socket) do
        {:noreply, socket}
    end

    defp init_home(socket, locale) do
        assign(socket,
            text: "Gtest",
            locale: locale
            )
    end

    defp assign_languaje(socket, value) do
        resp = socket
            |> init_home(value)
            IO.inspect(socket, label: "assign_languaje con value --- >   ")
        {:ok, resp}
    end
    defp assign_languaje(socket) do
        resp = socket
            |> Map.put(:private, %{assigned_new: {%{locale: "en"}, []}, connect_params: %{}})
            |> init_home("en")
            IO.inspect(resp, label: "assign_languaje SIN value --- >   ")
        {:ok, resp}
    end
    """

    def render(assigns) do
        LanguajeWeb.HomeLiveView.render("index.html", assigns)
    end
    def mount(_locale, socket) do
        {:ok, assign(socket, text: "Gtest")}
    end

end