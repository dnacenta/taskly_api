class User < ApplicationRecord
  has_many :tasks
  has_many :orders

  def as_json(options={})
  super(only: [:name],
    methods: [:tasks_count, :orders_count],
    include: [tasks: { only: :name }, orders: { only: :name }]
    )
  end


  def tasks_count
    self.tasks.count
  end

  def orders_count
    self.orders.count
  end

end
