class TwitterSearch

  def get_timeline(params, count)
    Rails.cache.fetch(['user_timeline', params], :expires => 5.minutes) do
      $twitter.user_timeline(params, count: count)
    end
  end
end
