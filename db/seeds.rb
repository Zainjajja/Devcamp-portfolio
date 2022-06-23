10.times do |blog|
	Blog.create!(tittle:"my blog post #{blog}",
		body:"A blog is a type of website where the content is presented in reverse chronological order (newer content appear first). Blog content is often referred to as entries or “blog posts”.

Blogs are typically run by an individual or a small group of people to present information in a conversational style. However, now there are tons of corporate blogs that produce a lot of informational and thought-leadership style content."
		)
end
puts "10 blogs created"


10.times do |skill|
	Skill.create!(tittle:"Rails #{skill}",
		percent_utilized:"75"
		)
end
puts "10 skills created"

10.times do |portfolio_item|
	Portfolio.create!(tittle:"portfolio tittle #{portfolio_item}",
		subtittle:"great subtittle",
		body:"Our project discussion methodology includes gathering all the requirements from the client through different means depending on the client expertise. These can be in form of questionnaire, use cases, agile story boards, wire frames etc.",
		main_image:"https://via.placeholder.com/300",
		thumb_image:"https://via.placeholder.com/200")
end
puts "10 portfolios created"

