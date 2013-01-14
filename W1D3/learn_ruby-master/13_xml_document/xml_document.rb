class XmlDocument

  def initialize(indent=false)
    @indent = indent
  end

  def method_missing(meth, *args, &block)
    if @indent
      if args.empty? && !block_given?
        "  " + "<#{meth}/>" + "\n"
      elsif !block_given?
         "  " + "<#{meth} #{args[0].keys[0]}='#{args[0].values[0]}'/>" + "\n"
      else
        "  " + "<#{meth}>" + "\n" + block.call + "</#{meth}>" + "\n"
      end
    else
      if args.empty? && !block_given?
        "<#{meth}/>"
      elsif !block_given?
        "<#{meth} #{args[0].keys[0]}='#{args[0].values[0]}'/>"
      else
        "<#{meth}>" + block.call + "</#{meth}>"
      end
    end
  end
end

