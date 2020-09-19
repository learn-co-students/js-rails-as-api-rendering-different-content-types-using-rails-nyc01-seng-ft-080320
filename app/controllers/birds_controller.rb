class BirdsController < ApplicationController

  def index
    # dont need to set instance variables like @birds since we are not sending data to ERB files.
    birds = Bird.all
    render json: birds
  end
end



# or
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
#   end
# end

# or
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: @birds
#   end
# end



# or
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
#   end
# end

# or
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { message: 'Hashes of data will get converted to JSON' }
#   end
# end

# or
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: ['As','well','as','arrays']
#   end
# end