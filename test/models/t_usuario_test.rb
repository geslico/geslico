require 'test_helper'

class TUsuarioTest < ActiveSupport::TestCase
  def setup
    #@t_usuario = TUsuario.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @t_usuarios.valid?
  end

  test "código should be present" do
    @t_usuarios.cCodUsuario = ""
    assert_not @t_usuarios.valid?
  end

  test "password should be present (nonblank)" do
    @t_usuarios.password = @t_usuarios.password_confirmation = " " * 6
    assert_not @t_usuarios.valid?
  end

  test "password should have a minimum length" do
    @t_usuarios.password = @t_usuarios.password_confirmation = "a" * 5
    assert_not @t_usuarios.valid?
  end

end
