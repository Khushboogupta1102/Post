module CreationTime
    extend ActiveSupport::Concern

    def formatted_creation_time
      created_at.strftime("%B %d, %Y %H:%M:%S")
    end
  end
  