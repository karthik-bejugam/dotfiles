if railsness
  # # in rails:
  # def Object.method_added(method)
  #   return super(method) unless method == :helper
  #   (class << self; self; end).send(:remove_method, :method_added)
  #
  #   def helper(*helper_names)
  #     returning $helper_proxy ||= Object.new do |helper|
  #       helper_names.each { |h| helper.extend "#{h}_helper".classify.constantize }
  #     end
  #   end
  #
  #   helper.instance_variable_set("@controller", ActionController::Integration::Session.new)
  #
  #   def helper.method_missing(method, *args, &block)
  #     @controller.send(method, *args, &block) if @controller && method.to_s =~ /_path$|_url$/
  #   end
  #
  #   def me
  #     User.find_by_email 'flip@mrflip.com'
  #   end
  #
  #   helper :application rescue nil
  # end if ENV['RAILS_ENV']

  def login id='mrflip'
    ::UserSession.controller = Authlogic::TestCase::MockController.new
    user = User.find_by_username(id) || User.find_by_id(id)
    us = UserSession.create(user)
  end

end
