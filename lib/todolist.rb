require_relative 'todoitem'
class ToDoList
  def initialize
    @items = [TodoItem.new("Buy milk", "Domestic"),
              TodoItem.new("Tax returns", "Finance"),
              TodoItem.new("Buy coffee", "Domestic")
    ]
  end

  def add_item(name,category)
    item = TodoItem.new(name, category)
    @items.push(item)
  end

  def by_category(category)
    @items.select {|item| item.category == category}
  end
  def items
    @items
  end

end
