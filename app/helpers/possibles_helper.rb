module PossiblesHelper
def inputbox_field(method, options = {})
    text_field(method, options.merge(class: 'inputbox'))
  end
end
