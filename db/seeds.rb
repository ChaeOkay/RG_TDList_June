list1 = List.create(name: "Books", list_status: "pending")
list1.tasks << Task.create(description: "Life of Pi", task_status: "pending")
list1.tasks << Task.create(description: "Confederacy of Dunces", task_status: "pending")
list1.tasks << Task.create(description: "Anna Karenina", task_status: "pending")

list2 = List.create(name: "Teas to Try", list_status: "pending")
list2.tasks << Task.create(description: "Rooibos", task_status: "pending")
list2.tasks << Task.create(description: "Genmaicha", task_status: "pending")

