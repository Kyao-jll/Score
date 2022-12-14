class UsersController < ApplicationController
  def index


    render({ :template => "user_templates/index.html.erb"})

  end
  
  def register
    render({ :template => "user_templates/register_form.html.erb"})

  end

  def create
    username = params.fetch("query_name")
    userrole = params.fetch("query_role")
    usercompany = params.fetch("query_company")
    userindustry = params.fetch("query_industry")

    new_user = User.new
    new_user.name = username
    new_user.role = userrole
    new_user.company = usercompany
    new_user.industry = userindustry

    new_user.save

    # redirect_to("/users/" + a_new_user.username.to_s)
    redirect_to("/")
  end

end
