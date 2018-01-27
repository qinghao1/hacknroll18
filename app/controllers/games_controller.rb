class GamesController < ApplicationController
  # GET /game/:id
  def show
    @game = Game.find(params[:id])
  end

  # POST /game/:id
  def submit
    @game = Game.find(params[:id])
    @current_round = Round.find(@game.current_round)

    # Send to Azure API, update scores
    picture = params[:picture]

    uri = URI('https://southeastasia.api.cognitive.microsoft.com/face/v1.0/detect')
    uri.query = URI.encode_www_form({
        # Request parameters
        'returnFaceId' => 'false',
        'returnFaceLandmarks' => 'false',
        'returnFaceAttributes' => '{string}',
        'processData' => 'false'
    })
    request = Net::HTTP::Post.new(uri.request_uri)
    # Request headers
    request['Content-Type'] = 'application/octet-stream'
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = api_key
    # Request body
    request.body = picture

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end

    response = JSON.parse(response)
    emotions = response.first["faceAttributes"]["emotion"]
    
    @current_round[


    @current_round.semaphore -= 1
    max_score = @game.session.players.length
    if @current_round.semaphore == 0
      @current_round.scores.sort_by{&:last}
      @current_round.each do |player, score|
        score = max_score
        max_score -= 1
      end
    end
    @current_round.save
  end
end
