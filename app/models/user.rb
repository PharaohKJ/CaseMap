class User < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  def self.create_or_update_by_auth(from_auth, current_session_id = nil)
    target_user = find_by(uid: from_auth[:uid])

    if target_user.nil?
      target_user = User.create!(
        uid: from_auth.uid,
        provider: from_auth.provider,
        name: from_auth.info.name,
        email: from_auth.info.email,
        image: from_auth.info.image
      )
    else
      target_user.update!(
        provider: from_auth[:provider],
        image: from_auth[:image]
      )
    end
    find_by(uid: target_user.uid)
  end
end
