class WelcomeController < ApplicationController
	protect_from_forgery with: :null_session

	def webhook
		req = ActiveSupport::JSON.decode(request.body)

		if Call.create({date: Time.now, type_webhook: req['type'], domain: req['domain'], apiURL: req['apiUrl'], secret: req['secret']})
			render text: "Webhook was properly written in DB"
		else
			render text: "There was an issue writing the webhook"
		end
	end

	def index
	end
end
