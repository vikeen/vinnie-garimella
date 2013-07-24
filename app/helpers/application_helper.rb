module ApplicationHelper

    # Returns the full title on a per page basis
    def full_title(page_title)
        base_title = 'V. Garimella'
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end

    # returns back a <ul> of links to provide for a nav bar
    # @params
    #   1. List of links to add. Example -> { link_name: link_href }
    #def nav_bar( link_list, css_class = '' )
    #    output = "<nav "

    #    if !css_class.empty?
    #        output += " class=\"#{css_class}\""
    #    end

    #    output += "><ul>"
    #    link_list.each do |value|
    #        output += "<li>"
    #        output += value
    #        output += "</li>"
    #    end
    #    output += "</ul></nav>"

    #    output.html_safe
    #end
end
