require 'test_helper'

class UserDecoratorTest < ActiveSupport::TestCase
  def setup
#    ActiveDecorator::ViewContext.current = controller.view_context
    @user = ActiveDecorator::Decorator.instance.decorate users(:jean)
  end

  test 'full_name' do
    assert_equal @user.full_name, 'Jean Valjean'
  end

  test 'link' do
    assert_equal @user.link, '<a href="http://jeanvaljean.com">Jean Valjean</a>'
  end
end
