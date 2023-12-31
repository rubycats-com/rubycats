class PageComponent < ApplicationComponent
  option :page
  option :user

  erb_template <<~ERB
    <div class="card card-lg mb-3">
      <div class="card-body">
        <div class="markdown">
          <%= content %>
        </div>
      </div>
      <% if page %>
        <div class="card-footer">
          <div class="row">
            <div class="col-9 mt-2">
              <span>Можно дополнить статью, создав в нее</span>
              <a href="https://github.com/rubycats-com/rubycats/tree/main/app/views/<%= page.slug %>.html.erb" target="_blank">Pull Request!</a>
            </div>
            <div class="col-3 text-end">
              <%= render Page::LikeComponent.new(page: page, user: user) if page %>
            </div>
          </div>
        </div>
      <% end %>
    </div>
  ERB
end
