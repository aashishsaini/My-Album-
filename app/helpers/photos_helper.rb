module PhotosHelper
def join_tggs(photo)
photo.tggs.map { |t| t.name }.join(", ")
end


end
