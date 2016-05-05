class TwitterSearch

  def get_timeline(params)
    Rails.cache.fetch(['user_timeline', params], :expires => 5.minutes) do
      $twitter.user_timeline(params, count: 25)
    end
  end
end
