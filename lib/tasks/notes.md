<!-- # user -->
#   own_photos                        --> own_tasks (user.rb line 30, 44, dev.rake line 54)
#   likes                             --> pings 
#   author_id                         --> poker_id 

#   sent_follow_requests              --> sent_friend_requests 
#   accepted_sent_follow_requests     --> accepted_sent_friend_requests
#   sender_id                         --> sender_id 
#   received_follow_requests          --> received_friend_requests
#   accepted_received_follow_requests --> accepted_received_friend_requests 
#   recipient_id                      --> receiver_id
#   fan_id                            --> poker_id
#   liked_photos                      --> peer_tasks
#   leaders                           --> receivers
#   followers                         --> senders
#   recipent                          --> receiver
#   sender                            --> sender
#   feed                              --> task_page

# photo --> task



# likes --> ping
#   fan                               --> poker 
#   fans                              --> pokers

# follow_request                      --> friend_request
#   recipient                         --> receiver 
#   sender                            --> sender 


<!-- //= link_tree ../images
//= link_directory ../stylesheets .css
//= link_tree ../../javascript .js
//= link_tree ../../../vendor/javascript .js
//= link application.css
//= link ping_task.js -->



# rails console
# user = User.find_by(username: 'alice')
# ctrl + i to summon copilot
#
#
# +Nrzc0yp4pH3MFYI9YM2GyIjptoLE/MlAyqycvuh5PWQJUT7E3bSYmi2+DWXCac8dl/vC55sOYH4EB+Socmgmxkl2MhQD2FLPOdao2NyigB1B1FluPpnQsI/uYEJhsLDgiCisRgkEc9qNQrcWH+Un6kxY5AaJ2UapuMBb6RTX/cGF98WQRa9+LltiLpYwiLnNPNyE+rh3WZDgPTrLg5NwO+XKMz13QvKqMGdg7Km/kyFXRR/pRLTlsS7MXDEPMg2Wwon+zopDKngX/+tR3Zd6PhVa+e2yN5yMVZ7/F1LamiJJJxLe54JQyb/4GKpQIkKUm9PFtFp6EC5HlTK7TVHAwUpMinp7Y9/5kFAJGVDT52Xwrhu4SQI0fNCI/yeoyt2mKMY34u65znB+feyl/4GK83p7br6qXPAsWyZ--X41Jo6YDcBgMCt8i--JM5pu8Z4sduuGlfTXLSa3A==
# credential.yml.enc from config

# Old Rails README

# Rails Template

# This is a base Ruby on Rails repository configured for learning with Codespaces (and Gitpod).

# - Ruby version: `3.2.1`
# - Rails version: `7.0.4.3`


# We've added additional Ruby gems and other software that aren't automatically available in a new Rails app.

# ### Additional gems:

# - [`appdev_support`](https://github.com/firstdraft/appdev_support)
# - [`annotate`](https://github.com/ctran/annotate_models)
# - [`awesome_print`](https://github.com/awesome-print/awesome_print)
# - [`better_errors`](https://github.com/BetterErrors/better_errors)
# - [`binding_of_caller`](https://github.com/banister/binding_of_caller)
# - [`dotenv-rails`](https://github.com/bkeepers/dotenv)
# - [`draft_generators`](https://github.com/firstdraft/draft_generators/)
# - [`draft_matchers`](https://github.com/jelaniwoods/draft_matchers/)
# - [`devise`](https://github.com/heartcombo/devise)
# - [`faker`](https://github.com/faker-ruby/faker)
# - [`grade_runner`](https://github.com/firstdraft/grade_runner/)
# - [`htmlbeautifier`](https://github.com/threedaymonk/htmlbeautifier/)
# - [`http`](https://github.com/httprb/http)
# - [`pry_rails`](https://github.com/pry/pry-rails)
# - [`rails_db`](https://github.com/igorkasyanchuk/rails_db)
# - [`rails-erd`](https://github.com/voormedia/rails-erd)
# - [`rspec-html-matchers`](https://github.com/kucaahbe/rspec-html-matchers)
# - [`rspec-rails`](https://github.com/rspec/rspec-rails)
# - [`rufo`](https://github.com/ruby-formatter/rufo)
# - [`specs_to_readme`](https://github.com/firstdraft/specs_to_readme)
# - [`table_print`](https://github.com/arches/table_print)
# - [`web_git`](https://github.com/firstdraft/web_git)
# - [`webmock`](https://github.com/bblimke/webmock)

# ### Additional software:
# - OS Ubuntu 20.04.5 LTS
# - Chromedriver
# - Fly.io's `flyctl`
# - Google Chrome (headless browser)
# - Graphviz
# - Heroku 
# - Node JS 18
# - NPM 8.19.3
# - Parity
# - Postgresql 12
# - Redis
# - Yarn

# ### VS Code extensions:
# - aliariff.vscode-erb-beautify
# - mbessey.vscode-rufo
# - vortizhe.simple-ruby-erb -->


<!--  20231129182306_add_owner_to_tasks.rb
class AddOwnerToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :owner, null: false, foreign_key: { to_table: :users }
  end
end -->

<!-- class ChangeCompletionToBooleanInTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :completion, :boolean, default: false
  end
end -->

<!-- Old Task List Styling -->

  <!--<ul>
  <div class="card" style="width: 18rem;">
    <ul class="list-group list-group-horizontal">
      <div class="card-header">
        <strong>Task Owner: </strong>
        <%# if task.owner.og_name != nil %>-->
  <!-- <%#= task.owner.og_name %> -->
  <!-- <%# else %> -->
  <!-- <%#= task.owner.username %> -->
  <!-- <%# end %> -->
  <!--      </div>
      <li class="list-group-item"><strong>Due Date: </strong><%#= task.due_date.strftime("%m/%d/%Y") %></li>
      <li class="list-group-item"><strong><button type="button" class="btn btn-warning">Ping me!</button></strong></li>
      <li class="list-group-item"><strong>Current Pings: </strong><%#= task.owner.pings_count %></li>
      <%# if current_user && current_user.username == task.owner.username %>-->
  <!--        <li class="list-group-item"><button type="button" class="btn btn-primary"> Done!</button></li>-->
  <!-- <%# end %> -->
  <!--
    </ul>
    <ul class="list-group list-group-horizontal">
      <div class="card-header">
        <strong>Description: </strong>
        <%#= task.description %>-->
  <!--      </div>
      <li class="list-group-item"><strong>Due Time: </strong><%#= task.due_time.strftime("%I:%M %p") %>
      </li>
      <%# if current_user && current_user.username == task.owner.username %>-->
  <!--        <ul class="list-group list-group-horizontal">
          <li class="list-group-item">
            <button type="button" class="btn btn-success">
              <%#= link_to "More details", task, style: "color: white; text-decoration: none;" %>-->
  <!--            </button>
          </li>
          <li class="list-group-item">
            <%#= button_to "Delete Task", task_path(task), method: :delete, data: { confirm: "Are you sure?" }, class: "btn btn-danger" %>-->
  <!--          </li>
        </ul>
      <%# else %>-->
  <!--        <li class="list-group-item">
          <button type="button" class="btn btn-success">
            <%#= link_to "More details", task, style: "color: white; text-decoration: none;" %>-->
  <!--          </button>
        </li>
      <%# end %>-->
  <!--    </ul>
  </div>
</ul>-->

  <!-- Old Completion % -->
  <!--      <li class="list-group-item"><strong>Completion: </strong><%#= task.completion %>%</li>-->

  <!--
<ul>
  <div class="card" style="width: 18rem;">
    <div class="card-header">
      <strong>Task Owner: </strong>
      <%# if task.owner.og_name != nil %>-->
  <!-- <%#= task.owner.og_name %> -->
  <!-- <%# else %> -->
  <!-- <%#= task.owner.username %> -->
  <!-- <%# end %> -->
  <!--    </div>
    <div class="card-header">
      <strong>Description: </strong>
      <%#= task.description %>-->
  <!--    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Ping me!</li>
      <li class="list-group-item">Due Date: <%#= task.due_date.strftime("%m/%d/%Y") %></li>
      <li class="list-group-item">Due Time: <%#= task.due_time.strftime("%I:%M %p") %></li>
      <li class="list-group-item"><%#= link_to "More details", task %></li>
    </ul>
  </div>
</ul>
-->

<!-- Old Styling -->
<!-- <%# current_owner = nil %> -->
<!-- <%# @user.peer_tasks.each do |task| %> -->
  <!-- <%# if current_owner != task.owner %> -->
    <!-- <%# current_owner = task.owner %> -->
      <!-- <%# if task.owner.og_name != nil %> -->
<!--          <h3><%#= task.owner.og_name %>'s Tasks</h3>-->
        <!-- <%# else %> -->
<!--          <h3><%#= task.owner.username %>'s Tasks</h3>-->
        <!-- <%# end %> -->
  <!-- <%# end %> -->
  <!-- <%#= render "tasks/task_list", task: task %> -->
<!-- <%# end %> -->

<!-- My Tasks Partial -->
<!--If I want 3 tasks per row-->
<%# @user.own_tasks.order(due_date: :asc, due_time: :asc).group_by { |task| task.due_date.month }.each do |month, tasks| %>
<!--  <h2><%#= tasks.first.due_date.strftime("%B") %></h2>
  <div class="row">
    <%# tasks.each_slice(3) do |tasks_group| %>-->
      <%# tasks_group.each do |task| %>
<!--        <div class="col-md-4">-->
          <%#= render "tasks/task_list", task: task %>
<!--        </div>-->
      <%# end %>
    <%# end %>
<!--  </div>-->
<%# end %>
<!---->


extra migrations
20231129181751_remove_owner_reference_from_tasks.rb
class RemoveOwnerReferenceFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tasks, :owner, null: false, foreign_key: true
  end
end

20231129182110_remove_owner_id_from_tasks.rb
class RemoveOwnerIdFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :owner_id
  end
end

20231129182306_add_owner_to_tasks.rb
class AddOwnerToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :owner, null: false, foreign_key: { to_table: :users }
  end
end
