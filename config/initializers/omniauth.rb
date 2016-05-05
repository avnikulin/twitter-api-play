#consumers = YAML.load("#{Rails.root}/config/omniauth.yml")
#
#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :twitter, consumers['twitter']['key'], consumers['twitter']['secret']
#end