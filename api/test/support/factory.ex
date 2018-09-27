defmodule Streamviewer.Factory do
    use ExMachina.Ecto, repo: Streamviewer.Repo

    def user_factory do
        %Streamviewer.User{
            token: "ffnebyt73bich9",
            email: "batman@example.com",
            first_name: "Bruce",
            last_name: "Wayne",
            provider: "google"
          }
    end
end