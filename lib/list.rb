module List
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def register_list(name, value)
      eval(%Q(

        def self.list
          self.find(:all).collect {|c| [c.#{name}, c.#{value}]}
        end))
    end
  end

end
 ActiveRecord::Base.send(:include, List)


