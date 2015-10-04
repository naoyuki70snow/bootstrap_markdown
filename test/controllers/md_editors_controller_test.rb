require 'test_helper'

class MdEditorsControllerTest < ActionController::TestCase
  setup do
    @md_editor = md_editors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:md_editors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create md_editor" do
    assert_difference('MdEditor.count') do
      post :create, md_editor: { markdown: @md_editor.markdown }
    end

    assert_redirected_to md_editor_path(assigns(:md_editor))
  end

  test "should show md_editor" do
    get :show, id: @md_editor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @md_editor
    assert_response :success
  end

  test "should update md_editor" do
    patch :update, id: @md_editor, md_editor: { markdown: @md_editor.markdown }
    assert_redirected_to md_editor_path(assigns(:md_editor))
  end

  test "should destroy md_editor" do
    assert_difference('MdEditor.count', -1) do
      delete :destroy, id: @md_editor
    end

    assert_redirected_to md_editors_path
  end
end
