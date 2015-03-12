class getCode < Catgoose::Controller
  required do
    string :source_url
  end

  def validate
    add_error :channel, :none, "Cant find that channel" unless chan
  end

  def execute
    msg = {: message, from: session[:username]}
    chan.publish msg
    {}
  end



end
