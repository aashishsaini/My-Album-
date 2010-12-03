module CoversHelper

  def join_tgs(cover)
cover.tgs.map { |t| t.name }.join(", ")
end

end
