class PhotosController < ApplicationController

def create
  @cover = Cover.find(params[:cover_id])
  @comment = @cover.photos.create(params[:photo])
  redirect_to cover_path(@cover)
end


def destroy
  @cover = Cover.find(params[:cover_id])
  @photo = @cover.photos.find(params[:id])
  @photo.destroy
  redirect_to cover_path(@cover)
end

def create_asset
@image = Image.new(params[:image_form])
 @image.save
 render :text => @image.public_filename

end



end

