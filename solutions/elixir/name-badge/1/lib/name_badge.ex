defmodule NameBadge do
   def print(id, name, nil) do
     if id == nil do
        "#{name} - OWNER"
      else
        "[#{id}] - #{name} - OWNER"
      end
   end
   
  def print(id, name, department) do
    if id == nil do
      "#{name} - #{String.upcase(department)}"
    else
      "[#{id}] - #{name} - #{String.upcase(department)}"
    end
  end
end
