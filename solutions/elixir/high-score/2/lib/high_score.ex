defmodule HighScore do
  @moduledoc """
  Un module qui permet de calculer le score des joueurs.
  """

  @basic_score 0

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ @basic_score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, @basic_score)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn _ -> scores[name] + score end)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
