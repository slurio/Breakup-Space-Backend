class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date, :time, :up_votes, :user, :comments

  def comments
    ActiveModel::SerializableResource.new(object.comments,  each_serializer: CommentSerializer)
  end

end