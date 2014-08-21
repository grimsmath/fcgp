=begin
  #m16.message-item
    .message-inner
      .message-head.clearfix
        .avatar.pull-left
          %a{:href => "./index.php?qa=user&qa_1=Oleg+Kolesnichenko"}
            %img{:src => "https://ssl.gstatic.com/accounts/ui/avatar_2x.png"}/
        .user-detail
          %h5.handle Oleg Kolesnichenko
          .post-meta
            .asker-meta
              %span.qa-message-what
              %span.qa-message-when
                %span.qa-message-when-data Jan 21
              %span.qa-message-who
                %span.qa-message-who-pad by
                %span.qa-message-who-data
                  %a{:href => "./index.php?qa=user&qa_1=Oleg+Kolesnichenko"} Oleg Kolesnichenko
      .qa-message-content
        Yo!
=end

class Timeline
  def self.new_item(link, avatar, handle, data_who, data_what, data_when, message_content)
    @doc = Nokogiri::HTML::DocumentFragment.parse ""

    builder = Nokogiri::HTML::Builder.with(@doc) do |doc|
      doc.div(class: 'message-item') {
        doc.div(class: 'message-head clearfix') {
          doc.div(class: 'avatar pull-left') {
            doc.a(href: link)
              doc.img(src: avatar)
          }

          doc.div(class: 'user-detail') {
            doc.h5(class: 'handle') {
             doc.text "#{handle}"
            }

            doc.div(class: 'post-meta') {
              doc.span(class: 'asker-meta') {
                doc.span(class: 'qa-message-when') {
                  doc.span(class: 'qa-message-when-data') {
                    doc.text "#{data_when} "
                  }
                }
                doc.span(class: 'qa-message-who') {
                  doc.span(class: 'qa-message-who-pad') {
                    doc.text " by "
                  }
                }
                doc.span(class: 'qa-message-what') {
                  doc.span(class: 'qa-message-what-data') {
                    doc.text "#{data_what}"
                  }
                }
                doc.span(class: 'qa-message-who-data') {
                  doc.a(href: data_who)
                }
              }
            }
          }
        }
        doc.div(class: 'qa-message-content') {
          doc.text "#{message_content}"
        }
      }
    end

    return @doc.to_html
  end
end
