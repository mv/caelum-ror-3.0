module ApplicationHelper

  def menu_principal
    menu = %w(cliente qualificacao restaurante)

    menu_principal = "<menu><ul>"
    menu.each do |item|

      menu_principal << "<li>" +
                        link_to(item, :controller => item.pluralize) +
                        "</li>"

    end
    menu_principal << "</ul></menu>"

    raw menu_principal

  end

end
