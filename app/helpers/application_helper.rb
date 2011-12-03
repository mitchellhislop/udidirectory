module ApplicationHelper

  def header_for_page(title = "", show_search = true)
    code = <<-END_HTML
    <div class="row">
      <div class="span-two-thirds">
        <div class="page-header">
      	  <h1><a style="text-decoration:none;color:#404040;" href="/">UDIDirectory</a> <small>#{title}</small></h1>
      	</div>
      </div>
      <div class="span-one-third">
    END_HTML
    
    if show_search then
      code << capture do
        form_for :twitter_user, :url => search_url do |f|
          concat raw "<fieldset>"
          concat text_field_tag :q
          concat raw "&nbsp;&nbsp;"
          concat submit_tag "Search", :class => "btn"
          concat raw "</fieldset>"
        end
      end
    end
    
    # End the span and row.
    code << "</div></div>"    
    return code
  end

end
