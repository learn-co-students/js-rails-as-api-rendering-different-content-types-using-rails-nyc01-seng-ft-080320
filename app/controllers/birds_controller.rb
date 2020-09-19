class BirdsController < ApplicationController
def index
  birds = Bird.all
  render json: birds 
end

# EXAMPLE - with render json:, instance variables (@birds), are no longer needed
# ? why are instance variables not needed? 
#   def index 
#       @birds = Bird.all
#       render json: @birds #=>> @birds is a collection of data already defined above. 
#       # render json: {message: 'Hashes of data will get converted to JSON'}
#       # render json: ['arrays', 'converted', 'asWell']
#   end
# end
# !EXAMPLE

# EXAMPLE - plaintext being rendered
#     def index 
#         @birds = Bird.all
#         render plain: "Hello #(@birds[3].name}" 
#     end
# end
# !EXAMPLE

# EXAMPLE - standard implicit rendering of .erb files
# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     #render 'birds/index.html.erb'
#   end
# end
# !EXAMPLE

# hashes and arrayys given to #{render.json:} are converted to JSON objects
# render: json [array]/{hash}.to_json explicitly converts given render argument. 