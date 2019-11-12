class Souvenir < ApplicationRecord
    #画像のアップローダー
    mount_uploader :picture ,PictureUploader
    #存在性のvalidation
    validates:name, presence: true,length: {maximum:70}
    validates:comment, presence: true,length: {maximum:250}
    validates:spot, presence: true
    validates:price, presence: true
    validates:genre, presence: true
    validate :picture_size

    private
    #画像サイズのバリデーション
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

    def souvenir_params
      params.require(:souvenirs).permit(:name, :spot, :price, :genre, :picture, :comment)
    end
  

end
