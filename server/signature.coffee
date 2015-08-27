Future = Npm.require "fibers/future"

Meteor.methods
	"c.sign": (ops={}) ->
		@unblock()
		check ops, Object

		# Make sure user is logged in
		if not @userId
			return

		# Need to add some way to do custom auth
		signature = Cloudinary.uploader.direct_upload "",ops

		return signature
