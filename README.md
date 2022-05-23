# mdl-et718-20220523-rails-hr-


rails g scaffold Resume name image_url role location email phone




rails generate model Comment commenter:string body:text article:references
rails generate model Job title start_date end_date description:text resume:references



resources :resumes do
  resources :jobs
end


rails generate controller Comments
rails generate controller Jobs


<p>
  <strong>Commenter:</strong>
  <%= comment.commenter %>
</p>
 
<p>
  <strong>Comment:</strong>
  <%= comment.body %>
</p>
___________________________________________________________
<p>
  <strong>Title:</strong>
  <%= job.title %>
</p>

<p>
  <strong>Start Date:</strong>
  <%= job.start_date %>
</p>

<p>
  <strong>End Date:</strong>
  <%= job.end_date %>
</p>

<p>
  <strong>Description:</strong>
  <%= job.description %>
</p>


 
