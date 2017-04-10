from locust import HttpLocust, TaskSet, task

class UserBehavior(TaskSet): 

	@task(2)
	def index(self):
		self.client.get("/")

	@task(2)
	def profile(self):
		self.client.get("/")

class WebsiteUser(HttpLocust):
	task_set = UserBehavior
	min_wait = 10
	max_wait = 9000
	host = "http://google.com"
