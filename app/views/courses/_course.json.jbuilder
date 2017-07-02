json.extract! course, :id, :name, :panelist, :created_at, :updated_at
json.url course_url(course, format: :json)