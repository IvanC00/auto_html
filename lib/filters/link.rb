require 'action_view'

AutoHtml::Filter.create(:link).with(:html_options => {:rel => "nofollow", :target => '_blank'}) do |text, options|

  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::TagHelper

  auto_link(text, :all, options[:html_options])
end
