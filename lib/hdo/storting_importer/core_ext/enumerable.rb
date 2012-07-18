module Enumerable
  def uniq_by(&blk)
    res = {}
    
    each do |e|
      res[yield(e)] ||= e
    end
    
    res.values
  end
end

