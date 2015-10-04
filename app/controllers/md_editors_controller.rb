class MdEditorsController < ApplicationController
  before_action :set_md_editor, only: [:show, :edit, :update, :destroy]

  # GET /md_editors
  # GET /md_editors.json
  def index
    @md_editors = MdEditor.all
  end

  # GET /md_editors/1
  # GET /md_editors/1.json
  def show
  end

  # GET /md_editors/new
  def new
    @md_editor = MdEditor.new
  end

  # GET /md_editors/1/edit
  def edit
  end

  # POST /md_editors
  # POST /md_editors.json
  def create
    @md_editor = MdEditor.new(md_editor_params)

    respond_to do |format|
      if @md_editor.save
        format.html { redirect_to @md_editor, notice: 'Md editor was successfully created.' }
        format.json { render :show, status: :created, location: @md_editor }
      else
        format.html { render :new }
        format.json { render json: @md_editor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /md_editors/1
  # PATCH/PUT /md_editors/1.json
  def update
    respond_to do |format|
      if @md_editor.update(md_editor_params)
        format.html { redirect_to @md_editor, notice: 'Md editor was successfully updated.' }
        format.json { render :show, status: :ok, location: @md_editor }
      else
        format.html { render :edit }
        format.json { render json: @md_editor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /md_editors/1
  # DELETE /md_editors/1.json
  def destroy
    @md_editor.destroy
    respond_to do |format|
      format.html { redirect_to md_editors_url, notice: 'Md editor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_md_editor
      @md_editor = MdEditor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def md_editor_params
      params.require(:md_editor).permit(:markdown)
    end
end
